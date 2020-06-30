Class {
	#name : #OGLTextureManager,
	#superclass : #Object,
	#instVars : [
		'ogl',
		'textures',
		'memAvail',
		'memUsed',
		'memFrame',
		'compressTextures'
	],
	#pools : [
		'GLConstants',
		'GLExtConstants',
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Deprecated'
}

{ #category : #initialize }
OGLTextureManager >> beginFrame [
	memFrame := 0.
]

{ #category : #accessing }
OGLTextureManager >> bindTexture: aTForm [
	| handle |
	handle := self textureHandleOf: aTForm.
	handle timeStamp = ogl timeStamp ifFalse:[
		handle timeStamp: ogl timeStamp.
		memFrame := memFrame + handle bytesUsed.
	].
	ogl glBindTexture: GL_TEXTURE_2D with: handle glID.
]

{ #category : #initialize }
OGLTextureManager >> cleanup [
	"clean up any lost references"
	| |
	"first pass - clean up any unreferenced textures"
"	any := false.
	textures associationsDo:[:assoc|
		assoc key == nil ifTrue:[
			handle := assoc value.
			ogl glDeleteTextures: 1 with: (WordArray with: handle glID).
			memUsed := memUsed - handle bytesUsed.
			any := true].
	].
	any ifTrue:[textures finalizeValues]."
	"second pass - if we exceed maxMem of texture space clean up oldest (unused) textures"
	self releaseTextureMemoryIfNeeded.

]

{ #category : #accessing }
OGLTextureManager >> compressTextures [
	^ compressTextures
]

{ #category : #accessing }
OGLTextureManager >> compressTextures: ct [
	compressTextures := ct
]

{ #category : #private }
OGLTextureManager >> compressedSizeOf: aTForm at: level form: aForm [
	(ogl glGetTexLevelParameteri: aTForm target
		with: level
		with: GLTextureCompressedARB) = 0 ifTrue:[
			"texture was not compressed"
			^aForm width * aForm height * 4.
	].
	^ogl glGetTexLevelParameteri: aTForm target
		with: level
		with: GLTextureCompressedImageSizeARB
]

{ #category : #accessing }
OGLTextureManager >> deleteTexture: aTForm [
	| handle |
	handle := textures removeKey: aTForm sha ifAbsent:[nil].
	handle ifNotNil:[
		ogl glDeleteTextures: 1 with: (WordArray with: handle glID).
		memUsed := memUsed - handle bytesUsed.
	].
]

{ #category : #accessing }
OGLTextureManager >> deleteTexturesOlderThan: aTimeStamp [ 
	| old |
	old := OrderedCollection new.
	textures keysAndValuesDo: [:tex :handle |
		handle timeStamp < aTimeStamp
			ifTrue: [old add: tex]].
	old do: [:each | self deleteTexture: each].
	^ old size
]

{ #category : #initialize }
OGLTextureManager >> endFrame [
	self cleanup.
"	'Max: ', memUsed asStringWithCommas displayAt: 0@0.
	'Now: ', memFrame asStringWithCommas displayAt: 0@15.
	Display forceToScreen: (0@0 extent: 100@30).
"
]

{ #category : #initialize }
OGLTextureManager >> initialize: gl [
	ogl := gl.
	textures := Dictionary new.
	memAvail := 16*1024*1024.
	memUsed := 0.
	memFrame := 0.
	compressTextures := false.
]

{ #category : #stats }
OGLTextureManager >> memFrame [
	^memFrame
]

{ #category : #stats }
OGLTextureManager >> memUsed [
	^memUsed
]

{ #category : #accessing }
OGLTextureManager >> releaseTexture: aTForm [
	| binding |
	binding := textures associationAt: aTForm sha ifAbsent:[^self].
	binding key: nil. "clean up after frame completed"

]

{ #category : #initialize }
OGLTextureManager >> releaseTextureMemoryIfNeeded [
	"Release some textures if we exceed a certain space usage"
	| maxMem list sha |
	true ifTrue:[^self]. "doesn't *quite* work yet"
	"set upper memory bound"
	maxMem := 32*1024*1024. "for testing - set this to zero to force uploads on every frame"
	"Make sure we don't release anything if we needed it all in the current frame.
	Leave a bit of headroom for sudden changes in direction too."
	maxMem := maxMem max: memFrame + (4*1024*1024).
	memUsed > maxMem ifFalse:[^self].
	list := textures values asArray sort:[:h1 :h2| 
		h1 timeStamp = h2 timeStamp
			ifTrue:[h1 bytesUsed >= h2 bytesUsed]
			ifFalse:[h1 timeStamp < h2 timeStamp].
	].
	list do:[:handle|
		sha := textures keyAtIdentityValue: handle.
		textures removeKey: sha.
		ogl glDeleteTextures: 1 with: (WordArray with: handle glID).
		memUsed := memUsed - handle bytesUsed.
		memUsed < maxMem ifTrue:[^self].
	].

]

{ #category : #private }
OGLTextureManager >> scaleTexture: form to: scaledSize [
	| mmForm |
	form extent = scaledSize ifTrue:[^form].
	mmForm := Form extent: scaledSize depth: 32.
	(WarpBlt current toForm: mmForm)
		sourceForm: form destRect: mmForm boundingBox;
		combinationRule: 3;
		cellSize: 2;
		warpBits.
	^mmForm
]

{ #category : #accessing }
OGLTextureManager >> setTextureSizeOf: aTForm to: aPoint [
	| handle |
	handle := self textureHandleOf: aTForm ifAbsent:[nil].
	handle ifNil:[^nil]. "unknown"
	^handle scaledSize: aPoint
]

{ #category : #initialize }
OGLTextureManager >> setupHandle: aTForm [

	| holder handle newMem |

	aTForm invalidate: aTForm boundingBox.
	holder := WordArray new: 1.
	ogl glGenTextures: 1 with: holder.
	handle := OGLTextureHandle new.
	handle objectID: aTForm objectID.
	handle glID: (holder at: 1).
	handle scaledSize: aTForm trueExtent.
	handle timeStamp: ogl timeStamp.
	newMem := handle scaledSize area * 4.
	aTForm bMipmap ifTrue:[newMem := newMem + (newMem // 3)].
	handle bytesUsed: newMem.
	memUsed := memUsed + newMem.
	memFrame := memFrame + newMem.
	^handle.

]

{ #category : #accessing }
OGLTextureManager >> textureHandleOf: aTForm [
	| handle |
	"Find (or make) the handle. If it has a different objectID from the TForm, remake it."
	handle := textures at: aTForm sha ifAbsentPut:[self setupHandle: aTForm].
	handle objectID = aTForm objectID ifFalse:[
		"To work around a bug in some OpenGL implementations (Panasonic R3 w/ Intel OGL drivers for example) we destroy and recreate the handle here rather than recycling it. That's because on the aforementioned machine we had very strange effects when we tried to switch texture resolutions while using GLGenerateMipmapSGIS when replacing the thumbnails with cached versions."
		textures removeKey: aTForm sha.
		ogl glDeleteTextures: 1 with: (WordArray with: handle glID).
		handle := self setupHandle: aTForm.
		textures at: aTForm sha put: handle.
	].
	^handle.
]

{ #category : #accessing }
OGLTextureManager >> textureHandleOf: aTForm ifAbsent: aBlock [
	"First, find the real texture if necessary"
	| tf |
	aTForm isThumb 
		ifTrue:[tf := ogl formManager resolve: aTForm distance:ogl distance]
		ifFalse:[tf := aTForm].
	^textures at: tf sha ifAbsent: aBlock
]

{ #category : #accessing }
OGLTextureManager >> textureSizeOf: aTForm [
	| handle |
	handle := self textureHandleOf: aTForm ifAbsent:[nil].
	handle ifNil:[^nil]. "unknown"
	^handle scaledSize
]

{ #category : #accessing }
OGLTextureManager >> updateTextures: updateList [
	updateList do:[:tf | 
		"upload the new texture for the current texture handle"
		self uploadTexture: tf. 
	].
]

{ #category : #accessing }
OGLTextureManager >> uploadTexture: aTForm [
	| rect |
	rect := aTForm updateRect ifNil:[^self]. "nothing to upload"
	self uploadTexture: aTForm dirtyRect: rect.
	aTForm resetUpdateRect.
]

{ #category : #accessing }
OGLTextureManager >> uploadTexture: aTForm dirtyRect: aRectangle [
	"TODO: Later only upload the dirty portion"
	| handle form level scaledSize dirtyRect autoMip internalFormat byteSize format |

	autoMip := aTForm bMipmap and:[ogl autoMipmap].

	handle := self textureHandleOf: aTForm.
	handle timeStamp: ogl timeStamp.
	form := aTForm textureForm.
	form unhibernate.
	dirtyRect := aRectangle.
	aTForm isStatic ifTrue:[
		"Static (possibly compressed) textures typically require complete uploads;
		as they don't change often just upload everything."
		dirtyRect := 0@0 extent: aTForm textureForm extent.
	].
	dirtyRect := dirtyRect intersect: form boundingBox.
	ogl glBindTexture: GLTexture2d with: handle glID.
	ogl glTexParameteri: GLTexture2d with: GLTextureMinFilter with: aTForm minFilter.
	ogl glTexParameteri: GLTexture2d with: GLTextureMagFilter with: aTForm magFilter.
	autoMip ifTrue:[ogl glTexParameteri: GLTexture2d with: GLGenerateMipmapSGIS with: true].
	aTForm parameters keysAndValuesDo: [:pname :param |
		ogl glTexParameteri: aTForm target  with: pname with: param].

	"TODO: This would be the right place to figure out what the initial size of the texture should be given that we're already low on texture memory."
	handle scaledSize: aTForm trueExtent.
	scaledSize := handle scaledSize.

	"specific optimization for morphic textures"
	(dirtyRect extent ~= form extent "needed since first-time upload *must* use glTexImage2D"
		and:[form depth = 32 "needed since we only upload 32bpp forms"
		and:[scaledSize = form extent "needed since we don't scale here"
		and:[autoMip or:[aTForm bMipmap not "only allow for non-mipmaps"]]]]) ifTrue:[
			ogl glPixelStorei: GLUnpackRowLength with: form width.
			ogl glPixelStorei: GLUnpackSkipRows with: dirtyRect top.
			ogl glPixelStorei: GLUnpackSkipPixels with: dirtyRect left.
			ogl glTexSubImage2D: aTForm target with: 0 
				with: dirtyRect left with: dirtyRect top 
				with: dirtyRect width with: dirtyRect height 
				with: ogl platform texturePixelFormat with: ogl platform texturePixelType 
				with: form bits.
			ogl glPixelStorei: GLUnpackRowLength with: 0.
			ogl glPixelStorei: GLUnpackSkipRows with: 0.
			ogl glPixelStorei: GLUnpackSkipPixels with: 0.
			^self].

	level := 0.
	"figure out the internal format to use"
	internalFormat := ogl platform textureInternalFormat.
	aTForm isStatic ifTrue:[
		(ogl hasExtension: #'GL_ARB_texture_compression') ifTrue:[
			"internalFormat := ogl textureInternalFormatCompressed."
		].
		byteSize := 0.
	].

	[
		format := internalFormat.

		(compressTextures) ifTrue: [ format := GLCompressedRgbaS3tcDxt5EXT ]. "$$ assumes RGBA, shouldn't actually do this for real-time textures"

		form := self scaleTexture: form to: scaledSize.
		ogl glTexImage2D: aTForm target 
			with: level 
			with: format
			with: form width with: form height 
			with: 0 
			with: ogl texturePixelFormat 
			with: ogl texturePixelType 
			with: form bits.
		aTForm isStatic ifTrue:[
			byteSize := byteSize + (self compressedSizeOf: aTForm at: level form: form).
		].
	autoMip not 
		and:[aTForm bMipmap 
		and:[scaledSize x > 1 or:[scaledSize y > 1]]]] whileTrue:[
			scaledSize := (scaledSize // 2) max: (1@1).
			level := level + 1.
	].

	aTForm isStatic ifTrue:[
		memUsed := memUsed - handle bytesUsed.
		memFrame := memFrame - handle bytesUsed.
		handle bytesUsed: byteSize.
		memUsed := memUsed + handle bytesUsed.
		memFrame := memFrame + handle bytesUsed.
	].

]

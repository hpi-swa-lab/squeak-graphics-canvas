"
I manage fonts (and their caching) on a particular OpenGL object.
"
Class {
	#name : #OGLFontManager,
	#superclass : #Object,
	#instVars : [
		'glx',
		'fonts',
		'charList'
	],
	#pools : [
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Deprecated'
}

{ #category : #displaying }
OGLFontManager >> drawString: aString from: firstIndex to: lastIndex font: aFont [
	| sz glFontID |
	glFontID := fonts at: aFont ifAbsentPut:[self uploadFont: aFont].
	glx glListBase: glFontID.
	sz := lastIndex - firstIndex + 1.
	sz > charList size ifTrue:[charList := ByteArray new: sz].
	charList replaceFrom: 1 to: sz with: aString startingAt: firstIndex.
	glx glCallLists: sz with: GLByte with: charList

]

{ #category : #displaying }
OGLFontManager >> drawString: aString from: firstIndex to: lastIndex font: aFont align: aSymbol [
	| sz glFontID rect offset |
	glFontID := fonts at: aFont ifAbsentPut:[self uploadFont: aFont].
	glx glListBase: glFontID.
	sz := lastIndex - firstIndex + 1.
	aSymbol ifNotNil:[
		rect := 0@0 extent: (aFont widthOfString: aString) @ aFont height.
		offset := (rect perform: aSymbol).
		glx glBitmap: 0 with: 0 with: 0 with: 0
			with: 0 - offset x
			with: offset y - aFont height
			with: nil.
	].
	sz > charList size ifTrue:[charList := ByteArray new: sz].
	charList replaceFrom: 1 to: sz with: aString startingAt: firstIndex.
	glx glCallLists: sz with: GLByte with: charList

]

{ #category : #displaying }
OGLFontManager >> drawStringRect: rect align: aSymbol [
	| offset extent |
	aSymbol ifNotNil:[
		offset := (rect perform: aSymbol).
		glx glBitmap: 0 with: 0 with: 0 with: 0
			with: rect left - offset x
			with: offset y - rect height
			with: nil.
	].
	extent := rect extent.
	glx glBitmap: extent x with: extent y with: 0 with: 0
			with: extent x
			with: extent y
			with: ((Form extent: extent depth: 1) bits atAllPut: 16rFFFFFFFF).

]

{ #category : #displaying }
OGLFontManager >> frameStringRect: rect align: aSymbol [
	| offset form extent |
	aSymbol ifNotNil:[
		offset := (rect perform: aSymbol).
		glx glBitmap: 0 with: 0 with: 0 with: 0
			with: rect left - offset x
			with: offset y - rect height
			with: nil.
	].
	extent := rect extent.
	form := (Form extent: extent depth: 1).
	form getCanvas frameRectangle: form boundingBox width: 1 color: Color black.
	form flipVertically.
	self swapBytesOf: form bits.
	glx glBitmap: extent x with: extent y with: 0 with: 0
			with: extent x
			with: extent y
			with: form bits.

]

{ #category : #initialize }
OGLFontManager >> initialize: glX [
	glx := glX.
	fonts := IdentityDictionary new.
	charList := ByteArray new: 256.
]

{ #category : #private }
OGLFontManager >> swapBytesOf: aBitmap [
	^Bitmap swapBytesIn: aBitmap from: 1 to: aBitmap basicSize
]

{ #category : #displaying }
OGLFontManager >> uploadFont: aFont [
	| glFontID form |
	glFontID := glx glGenLists: 256.
	0 to: 255 do:[:i|
		form := aFont characterFormAt: (i asCharacter).
		form flipVertically.
		Smalltalk isLittleEndian ifTrue: [self swapBytesOf: form bits].
		glx glNewList: glFontID+i with: GLCompile.
		glx glBitmap: form width
			with: form height
			with: 0
			with: 0
			with: form width
			with: 0
			with: form bits.
		glx glEndList.
		form flipVertically.
		Smalltalk isLittleEndian ifTrue: [self swapBytesOf: form bits].
	].
	^glFontID
]

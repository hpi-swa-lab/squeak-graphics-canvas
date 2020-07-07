"
This is the main interface to the OpenGL library. 

displayList
displayListAlpha

David A. Smith
"
Class {
	#name : #OpenGL,
	#superclass : #ExternalLibrary,
	#instVars : [
		'platform',
		'context',
		'usesGLFW'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'MPOpenGL-Core'
}

{ #category : #example }
OpenGL class >> example [	"OpenGL example"
	"A very simple OpenGL example"

	| ogl frames startTime deltaTime framesPerSec bounds font |
	font := StrikeFont familyName: 'Atlanta' pointSize: 11.
	bounds := 0@0 extent: 400@400.
	ogl := OpenGL newIn: bounds.
	ogl ifNil:[^self error: 'Unable to create renderer'].
	[frames := 0.
	startTime := Time millisecondClockValue.
	[Sensor anyButtonPressed] whileFalse:[
		"start counting at second frame since first frame is penalized
		by the upload of the bitmap font outside of ogl."
		frames = 1 ifTrue:[startTime := Time millisecondClockValue].
		ogl beginFrame.

	"--- this is the actual scene content ---"

		ogl glDisable: GLDepthTest.	"for the simple example only"
		ogl glDisable: GLLighting.		"for the simple example only"

		ogl glClearColor: 1.0 with: 1.0 with: 1.0 with: 1.0.
		ogl glClear: GLColorBufferBit.

		ogl glRotatef: 5.0 with: 0.0 with: 0.0 with: 1.0.
		ogl glColor3f: 1.0 with: 0.0 with: 0.0.

		ogl glBegin: GLPolygon.
			ogl glVertex2f: -0.7 with: -0.7.
			ogl glVertex2f:  0.7 with: -0.7.
			ogl glVertex2f:  0.7 with:  0.7.
			ogl glVertex2f: -0.7 with:  0.7.
		ogl glEnd.

	"--- here is the 2d overlay setup ---"

		ogl glMatrixMode: GLProjection.
		ogl glPushMatrix.
		ogl glLoadIdentity.
		ogl glMatrixMode: GLModelview.
		ogl glPushMatrix.
		ogl glLoadIdentity.
		ogl glTranslated: -1 with: 1 with: 0.0.
		ogl glScaled: (2.0 / bounds width) with: (-2.0 / bounds height) with: 1.0.
		ogl glDisable: GLDepthTest.
		ogl glEnable: GLBlend.
		ogl glBlendFunc: GLOne with: GLOneMinusSrcAlpha.

	"--- here is the 2d overlay rendering ---"
		deltaTime := Time millisecondsSince: startTime.
		framesPerSec := frames * 1000 / (deltaTime max: 1) asFloat.
		
		"@@@@: Fixme. It appears as if #drawString: depends on glColor being set.
		Makes no sense but I'm not going to figure this out - probably some mishap
		wrt. GLLighting being disabled."
		ogl glColor3f: 0.0 with: 0.0 with: 0.0.
		ogl drawString: frames printString, ' frames: ', (framesPerSec truncateTo: 0.1), ' fps'
			at: 0@font height@0 font: font color: Color black.

		ogl glDisable: GLBlend.
		ogl glMatrixMode: GLModelview.
		ogl glPopMatrix.
		ogl glMatrixMode: GLProjection.
		ogl glPopMatrix.
		ogl glMatrixMode: GLModelview.

	"--- end the end frame operations"

		ogl endFrame.
		ogl swapBuffers.
		frames := frames + 1.
	].
	] ensure:[ogl destroy].
]

{ #category : #example }
OpenGL class >> exampleTex [	"OpenGL exampleTex"
	"A simple OpenGL example with texture"

	| ogl frames startTime deltaTime framesPerSec bounds font tex vertices texCoords |
	font := StrikeFont familyName: 'Atlanta' pointSize: 11.
	bounds := 0@0 extent: 400@400.
	ogl := OpenGL newIn: bounds.
	ogl ifNil:[^self error: 'Unable to create renderer'].
	[frames := 0.
	startTime := Time millisecondClockValue.
	tex := OGLTexture new form: (Display copy: (0@0 extent: 140@80)).
	vertices := #(-0.7 -0.4  0.7 -0.4  -0.7  0.4  0.7 0.4) as: FloatArray.
	texCoords := #(0.0 1.0  1.0 1.0  0.0 0.0  1.0 0.0) as: FloatArray.
	[Sensor anyButtonPressed] whileFalse:[
		"start counting at second frame since first frame is penalized
		by the upload of the bitmap font and texture outside of ogl."
		frames = 1 ifTrue:[startTime := Time millisecondClockValue].
		ogl beginFrame.

	"--- this is the actual scene content ---"

		ogl glDisable: GLDepthTest.	"for the simple example only"
		ogl glDisable: GLLighting.		"for the simple example only"

		ogl glClearColor: 1.0 with: 1.0 with: 1.0 with: 1.0.
		ogl glClear: GLColorBufferBit.

		ogl glRotatef: 0.1 with: 0.0 with: 0.0 with: 1.0.
		ogl glColor3f: 1.0 with: 1.0 with: 1.0.
		ogl installTexture: tex.		"uploads only in first frame"
		ogl enableTexture: tex.
		ogl glVertexPointer: 2 with: GLFloat with: 0 with: vertices.
		ogl glTexCoordPointer: 2 with: GLFloat with: 0 with: texCoords.
		ogl glEnableClientState: GLVertexArray.
		ogl glEnableClientState: GLTextureCoordArray.
   		ogl glDrawArrays: GLTriangleStrip with: 0 with: vertices size // 2.
		ogl glDisableClientState: GLTextureCoordArray.
		ogl glDisableClientState: GLVertexArray.
		ogl disableTexture: tex.

	"--- here is the 2d overlay setup ---"

		ogl glMatrixMode: GLProjection.
		ogl glPushMatrix.
		ogl glLoadIdentity.
		ogl glMatrixMode: GLModelview.
		ogl glPushMatrix.
		ogl glLoadIdentity.
		ogl glTranslated: -1 with: 1 with: 0.0.
		ogl glScaled: (2.0 / bounds width) with: (-2.0 / bounds height) with: 1.0.
		ogl glDisable: GLDepthTest.
		ogl glEnable: GLBlend.
		ogl glBlendFunc: GLOne with: GLOneMinusSrcAlpha.

	"--- here is the 2d overlay rendering ---"
		deltaTime := Time millisecondsSince: startTime.
		framesPerSec := frames * 1000 / (deltaTime max: 1) asFloat.
		
		"@@@@: Fixme. It appears as if #drawString: depends on glColor being set.
		Makes no sense but I'm not going to figure this out - probably some mishap
		wrt. GLLighting being disabled."
		ogl glColor3f: 0.0 with: 0.0 with: 0.0.
		ogl drawString: frames printString, ' frames: ', (framesPerSec printShowingMaxDecimalPlaces: 1), ' fps'
			at: 0@font height@0 font: font color: Color black.

		ogl glDisable: GLBlend.
		ogl glMatrixMode: GLModelview.
		ogl glPopMatrix.
		ogl glMatrixMode: GLProjection.
		ogl glPopMatrix.
		ogl glMatrixMode: GLModelview.

	"--- end the end frame operations"

		ogl endFrame.
		ogl swapBuffers.
		frames := frames + 1.
	].
	] ensure:[ogl destroy]. ogl
]

{ #category : #'class initialization' }
OpenGL class >> initialize [
	"OpenGL initialize"
	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self.

]

{ #category : #accessing }
OpenGL class >> moduleName [

	^ GLPlatform identifyPlatform new moduleName.
]

{ #category : #'instance creation' }
OpenGL class >> newB3DIn: bounds [
	| inst |
	inst := self new.
	inst context: (B3DContext newIn: bounds).
	^ inst
]

{ #category : #'class initialization' }
OpenGL class >> newGLFWIn: bounds [
	| inst |
	inst := self new.
	inst context: (GLFWContext newIn: bounds for: inst).
	^ inst
]

{ #category : #'class initialization' }
OpenGL class >> shutDown [ 
	self allSubInstancesDo: [:ea | ea destroy; becomeForward: #glSuspended].

]

{ #category : #'initialize-release' }
OpenGL >> beginFrame [
	self glPixelStorei: GL_UNPACK_ALIGNMENT with: 4.
	platform beginFrame: self
]

{ #category : #debugging }
OpenGL >> checkForError [
	"Check for any OpenGL errors, and raise an Error if any exist."
	| error |

	error := self glGetError.
	(error ~= 0) ifTrue: [self error: (self gluErrorString: error) ]

]

{ #category : #accessing }
OpenGL >> context [
	^ context
]

{ #category : #accessing }
OpenGL >> context: anObject [
	context := anObject
]

{ #category : #'initialize-release' }
OpenGL >> destroy [
	context ifNotNil: [ context destroy ].
	context := nil

]

{ #category : #'initialize-release' }
OpenGL >> endFrame [
	context endFrame
]

{ #category : #'as yet unclassified' }
OpenGL >> glAttachObjectARB: containerObj with: obj [
	"This method was automatically generated"
	^glExt glAttachObjectARB: containerObj with: obj
]

{ #category : #'as yet unclassified' }
OpenGL >> glBindAttribLocationARB: programObj with: index with: name [
	"This method was automatically generated"
	^glExt glBindAttribLocationARB: programObj with: index with: name
]

{ #category : #'as yet unclassified' }
OpenGL >> glBindBufferARB: target with: buffer [
	"This method was automatically generated"
	^glExt glBindBufferARB: target with: buffer
]

{ #category : #'as yet unclassified' }
OpenGL >> glBindFramebufferEXT: target with: buffer [
	"This method was automatically generated"
	^glExt glBindFramebufferEXT: target with: buffer
]

{ #category : #'as yet unclassified' }
OpenGL >> glBindProgramARB: target with: program [
	"This method was automatically generated"
	^glExt glBindProgramARB: target with: program
]

{ #category : #'as yet unclassified' }
OpenGL >> glBindRenderbufferEXT: target with: buffer [
	"This method was automatically generated"
	^glExt glBindRenderbufferEXT: target with: buffer
]

{ #category : #'as yet unclassified' }
OpenGL >> glBlitFramebufferEXT: srcX0 with: srcY0 with: srcX1 with: srcY1 with: dstX0 with: dstY0 with: dstX1 with: dstY1 with: mask with: filter [
	"This method was automatically generated"
	^glExt glBlitFramebufferEXT: srcX0 with: srcY0 with: srcX1 with: srcY1 with: dstX0 with: dstY0 with: dstX1 with: dstY1 with: mask with: filter
]

{ #category : #'as yet unclassified' }
OpenGL >> glBufferDataARB: target with: size with: data with: usage [
	"This method was automatically generated"
	^glExt glBufferDataARB: target with: size with: data with: usage
]

{ #category : #'as yet unclassified' }
OpenGL >> glBufferSubDataARB: target with: offset with: size with: data [
	"This method was automatically generated"
	^glExt glBufferSubDataARB: target with: offset with: size with: data
]

{ #category : #'as yet unclassified' }
OpenGL >> glCheckFramebufferStatusEXT: target [
	"This method was automatically generated"
	^glExt glCheckFramebufferStatusEXT: target
]

{ #category : #'as yet unclassified' }
OpenGL >> glClientActiveTextureARB: texture [
	"This method was automatically generated"
	^glExt glClientActiveTextureARB: texture
]

{ #category : #'as yet unclassified' }
OpenGL >> glCompileShaderARB: shaderObj [
	"This method was automatically generated"
	^glExt glCompileShaderARB: shaderObj
]

{ #category : #'as yet unclassified' }
OpenGL >> glCompressedTexImage1DARB: target with: level with: internalformat with: width with: border with: imageSize with: data [
	"This method was automatically generated"
	^glExt glCompressedTexImage1DARB: target with: level with: internalformat with: width with: border with: imageSize with: data
]

{ #category : #'as yet unclassified' }
OpenGL >> glCompressedTexImage2DARB: target with: level with: internalformat with: width with: height with: border with: imageSize with: data [
	"This method was automatically generated"
	^glExt glCompressedTexImage2DARB: target with: level with: internalformat with: width with: height with: border with: imageSize with: data
]

{ #category : #'as yet unclassified' }
OpenGL >> glCompressedTexImage3DARB: target with: level with: internalformat with: width with: height with: depth with: border with: imageSize with: data [
	"This method was automatically generated"
	^glExt glCompressedTexImage3DARB: target with: level with: internalformat with: width with: height with: depth with: border with: imageSize with: data
]

{ #category : #'as yet unclassified' }
OpenGL >> glCompressedTexSubImage1DARB: target with: level with: xoffset with: width with: aFormat with: imageSize with: data [
	"This method was automatically generated"
	^glExt glCompressedTexSubImage1DARB: target with: level with: xoffset with: width with: aFormat with: imageSize with: data
]

{ #category : #'as yet unclassified' }
OpenGL >> glCompressedTexSubImage2DARB: target with: level with: xoffset with: yoffset with: width with: height with: aFormat with: imageSize with: data [
	"This method was automatically generated"
	^glExt glCompressedTexSubImage2DARB: target with: level with: xoffset with: yoffset with: width with: height with: aFormat with: imageSize with: data
]

{ #category : #'as yet unclassified' }
OpenGL >> glCompressedTexSubImage3DARB: target with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: aFormat with: imageSize with: data [
	"This method was automatically generated"
	^glExt glCompressedTexSubImage3DARB: target with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: aFormat with: imageSize with: data
]

{ #category : #'as yet unclassified' }
OpenGL >> glCreateProgramObjectARB [
	"This method was automatically generated"
	^glExt glCreateProgramObjectARB
]

{ #category : #'as yet unclassified' }
OpenGL >> glCreateShaderObjectARB: shaderType [
	"This method was automatically generated"
	^glExt glCreateShaderObjectARB: shaderType
]

{ #category : #'as yet unclassified' }
OpenGL >> glDeleteBuffersARB: n with: buffers [
	"This method was automatically generated"
	^glExt glDeleteBuffersARB: n with: buffers
]

{ #category : #'as yet unclassified' }
OpenGL >> glDeleteFramebuffersEXT: n with: buffers [
	"This method was automatically generated"
	^glExt glDeleteFramebuffersEXT: n with: buffers
]

{ #category : #'as yet unclassified' }
OpenGL >> glDeleteObjectARB: obj [
	"This method was automatically generated"
	^glExt glDeleteObjectARB: obj
]

{ #category : #'as yet unclassified' }
OpenGL >> glDeleteProgramsARB: n with: programs [
	"This method was automatically generated"
	^glExt glDeleteProgramsARB: n with: programs
]

{ #category : #'as yet unclassified' }
OpenGL >> glDeleteRenderbuffersEXT: n with: buffers [
	"This method was automatically generated"
	^glExt glDeleteRenderbuffersEXT: n with: buffers
]

{ #category : #'as yet unclassified' }
OpenGL >> glDetachObjectARB: containerObj with: attachedObj [
	"This method was automatically generated"
	^glExt glDetachObjectARB: containerObj with: attachedObj
]

{ #category : #'as yet unclassified' }
OpenGL >> glDisableVertexAttribArrayARB: index [
	"This method was automatically generated"
	^glExt glDisableVertexAttribArrayARB: index
]

{ #category : #'as yet unclassified' }
OpenGL >> glEnableVertexAttribArrayARB: index [
	"This method was automatically generated"
	^glExt glEnableVertexAttribArrayARB: index
]

{ #category : #'as yet unclassified' }
OpenGL >> glFramebufferRenderbufferEXT: target with: attachment with: renderbuffertarget with: renderbuffer [
	"This method was automatically generated"
	^glExt glFramebufferRenderbufferEXT: target with: attachment with: renderbuffertarget with: renderbuffer
]

{ #category : #'as yet unclassified' }
OpenGL >> glFramebufferTexture1DEXT: target with: attachment with: textarget with: texture with: level [
	"This method was automatically generated"
	^glExt glFramebufferTexture1DEXT: target with: attachment with: textarget with: texture with: level
]

{ #category : #'as yet unclassified' }
OpenGL >> glFramebufferTexture2DEXT: target with: attachment with: textarget with: texture with: level [
	"This method was automatically generated"
	^glExt glFramebufferTexture2DEXT: target with: attachment with: textarget with: texture with: level
]

{ #category : #'as yet unclassified' }
OpenGL >> glFramebufferTexture3DEXT: target with: attachment with: textarget with: texture with: level with: zoffset [
	"This method was automatically generated"
	^glExt glFramebufferTexture3DEXT: target with: attachment with: textarget with: texture with: level with: zoffset
]

{ #category : #'as yet unclassified' }
OpenGL >> glGenBuffersARB: n with: buffers [
	"This method was automatically generated"
	^glExt glGenBuffersARB: n with: buffers
]

{ #category : #'as yet unclassified' }
OpenGL >> glGenFramebuffersEXT: n with: buffers [
	"This method was automatically generated"
	^glExt glGenFramebuffersEXT: n with: buffers
]

{ #category : #'as yet unclassified' }
OpenGL >> glGenProgramsARB: n with: programs [
	"This method was automatically generated"
	^glExt glGenProgramsARB: n with: programs
]

{ #category : #'as yet unclassified' }
OpenGL >> glGenRenderbuffersEXT: n with: buffers [
	"This method was automatically generated"
	^glExt glGenRenderbuffersEXT: n with: buffers
]

{ #category : #'as yet unclassified' }
OpenGL >> glGenerateMipmapEXT: target [
	"This method was automatically generated"
	^glExt glGenerateMipmapEXT: target
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetActiveAttribARB: programObj with: index with: maxLength with: length with: size with: type with: name [
	"This method was automatically generated"
	^glExt glGetActiveAttribARB: programObj with: index with: maxLength with: length with: size with: type with: name
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetActiveUniformARB: programObj with: index with: maxLength with: length with: size with: type with: name [
	"This method was automatically generated"
	^glExt glGetActiveUniformARB: programObj with: index with: maxLength with: length with: size with: type with: name
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetAttachedObjectsARB: containerObj with: maxCount with: count with: obj [
	"This method was automatically generated"
	^glExt glGetAttachedObjectsARB: containerObj with: maxCount with: count with: obj
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetAttribLocationARB: programObj with: name [
	"This method was automatically generated"
	^glExt glGetAttribLocationARB: programObj with: name
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetBufferParameterivARB: target with: pname with: params [
	"This method was automatically generated"
	^glExt glGetBufferParameterivARB: target with: pname with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetBufferPointervARB: target with: pname with: params [
	"This method was automatically generated"
	^glExt glGetBufferPointervARB: target with: pname with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetBufferSubDataARB: target with: offset with: size with: data [
	"This method was automatically generated"
	^glExt glGetBufferSubDataARB: target with: offset with: size with: data
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetCompressedTexImageARB: target with: lod with: img [
	"This method was automatically generated"
	^glExt glGetCompressedTexImageARB: target with: lod with: img
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetFramebufferAttachmentParameterivEXT: target with: attachment with: pname with: params [
	"This method was automatically generated"
	^glExt glGetFramebufferAttachmentParameterivEXT: target with: attachment with: pname with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetHandleARB: pname [
	"This method was automatically generated"
	^glExt glGetHandleARB: pname
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetInfoLogARB: obj with: maxLength with: length with: infoLog [
	"This method was automatically generated"
	^glExt glGetInfoLogARB: obj with: maxLength with: length with: infoLog
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetObjectParameterfvARB: obj with: pname with: params [
	"This method was automatically generated"
	^glExt glGetObjectParameterfvARB: obj with: pname with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetObjectParameterivARB: obj with: pname with: params [
	"This method was automatically generated"
	^glExt glGetObjectParameterivARB: obj with: pname with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetProgramEnvParameterdvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glGetProgramEnvParameterdvARB: target with: index with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetProgramEnvParameterfvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glGetProgramEnvParameterfvARB: target with: index with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetProgramLocalParameterdvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glGetProgramLocalParameterdvARB: target with: index with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetProgramLocalParameterfvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glGetProgramLocalParameterfvARB: target with: index with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetProgramStringARB: target with: pname with: string [
	"This method was automatically generated"
	^glExt glGetProgramStringARB: target with: pname with: string
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetProgramivARB: target with: pname with: params [
	"This method was automatically generated"
	^glExt glGetProgramivARB: target with: pname with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetRenderbufferParameterivEXT: target with: pnames with: params [
	"This method was automatically generated"
	^glExt glGetRenderbufferParameterivEXT: target with: pnames with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetShaderSourceARB: obj with: maxLength with: length with: source [
	"This method was automatically generated"
	^glExt glGetShaderSourceARB: obj with: maxLength with: length with: source
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetUniformLocationARB: programObj with: name [
	"This method was automatically generated"
	^glExt glGetUniformLocationARB: programObj with: name
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetUniformfvARB: programObj with: location with: params [
	"This method was automatically generated"
	^glExt glGetUniformfvARB: programObj with: location with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetUniformivARB: programObj with: location with: params [
	"This method was automatically generated"
	^glExt glGetUniformivARB: programObj with: location with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetVertexAttribPointervARB: index with: pname with: pointer [
	"This method was automatically generated"
	^glExt glGetVertexAttribPointervARB: index with: pname with: pointer
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetVertexAttribdvARB: index with: pname with: params [
	"This method was automatically generated"
	^glExt glGetVertexAttribdvARB: index with: pname with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetVertexAttribfvARB: index with: pname with: params [
	"This method was automatically generated"
	^glExt glGetVertexAttribfvARB: index with: pname with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glGetVertexAttribivARB: index with: pname with: params [
	"This method was automatically generated"
	^glExt glGetVertexAttribivARB: index with: pname with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glIsBufferARB: buffer [
	"This method was automatically generated"
	^glExt glIsBufferARB: buffer
]

{ #category : #'as yet unclassified' }
OpenGL >> glIsFramebufferEXT: buffer [
	"This method was automatically generated"
	^glExt glIsFramebufferEXT: buffer
]

{ #category : #'as yet unclassified' }
OpenGL >> glIsProgramARB: program [
	"This method was automatically generated"
	^glExt glIsProgramARB: program
]

{ #category : #'as yet unclassified' }
OpenGL >> glIsRenderbufferEXT: buffer [
	"This method was automatically generated"
	^glExt glIsRenderbufferEXT: buffer
]

{ #category : #'as yet unclassified' }
OpenGL >> glLinkProgramARB: programObj [
	"This method was automatically generated"
	^glExt glLinkProgramARB: programObj
]

{ #category : #'as yet unclassified' }
OpenGL >> glLoadTransposeMatrixf: m [
	"This method was automatically generated"
	^glExt glLoadTransposeMatrixf: m
]

{ #category : #'as yet unclassified' }
OpenGL >> glLockArraysEXT: first with: count [
	"This method was automatically generated"
	^glExt glLockArraysEXT: first with: count
]

{ #category : #'as yet unclassified' }
OpenGL >> glMapBufferARB: target with: access [
	"This method was automatically generated"
	^glExt glMapBufferARB: target with: access
]

{ #category : #'as yet unclassified' }
OpenGL >> glMultTransposeMatrixf: m [
	"This method was automatically generated"
	^glExt glMultTransposeMatrixf: m
]

{ #category : #'as yet unclassified' }
OpenGL >> glProgramEnvParameter4dARB: target with: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glProgramEnvParameter4dARB: target with: index with: x with: y with: z with: w
]

{ #category : #'as yet unclassified' }
OpenGL >> glProgramEnvParameter4dvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glProgramEnvParameter4dvARB: target with: index with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glProgramEnvParameter4fARB: target with: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glProgramEnvParameter4fARB: target with: index with: x with: y with: z with: w
]

{ #category : #'as yet unclassified' }
OpenGL >> glProgramEnvParameter4fvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glProgramEnvParameter4fvARB: target with: index with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glProgramLocalParameter4dARB: target with: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glProgramLocalParameter4dARB: target with: index with: x with: y with: z with: w
]

{ #category : #'as yet unclassified' }
OpenGL >> glProgramLocalParameter4dvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glProgramLocalParameter4dvARB: target with: index with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glProgramLocalParameter4fARB: target with: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glProgramLocalParameter4fARB: target with: index with: x with: y with: z with: w
]

{ #category : #'as yet unclassified' }
OpenGL >> glProgramLocalParameter4fvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glProgramLocalParameter4fvARB: target with: index with: params
]

{ #category : #'as yet unclassified' }
OpenGL >> glProgramStringARB: target with: format with: len with: string [
	"This method was automatically generated"
	^glExt glProgramStringARB: target with: format with: len with: string
]

{ #category : #'as yet unclassified' }
OpenGL >> glRenderbufferStorageEXT: target with: internalformat with: width with: height [
	"This method was automatically generated"
	^glExt glRenderbufferStorageEXT: target with: internalformat with: width with: height
]

{ #category : #'as yet unclassified' }
OpenGL >> glShaderSourceARB: shaderObj with: count with: string with: length [
	"This method was automatically generated"
	^glExt glShaderSourceARB: shaderObj with: count with: string with: length
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform1fARB: location with: v0 [
	"This method was automatically generated"
	^glExt glUniform1fARB: location with: v0
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform1fvARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform1fvARB: location with: count with: value
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform1iARB: location with: v0 [
	"This method was automatically generated"
	^glExt glUniform1iARB: location with: v0
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform1ivARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform1ivARB: location with: count with: value
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform2fARB: location with: v0 with: v1 [
	"This method was automatically generated"
	^glExt glUniform2fARB: location with: v0 with: v1
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform2fvARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform2fvARB: location with: count with: value
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform2iARB: location with: v0 with: v1 [
	"This method was automatically generated"
	^glExt glUniform2iARB: location with: v0 with: v1
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform2ivARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform2ivARB: location with: count with: value
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform3fARB: location with: v0 with: v1 with: v2 [
	"This method was automatically generated"
	^glExt glUniform3fARB: location with: v0 with: v1 with: v2
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform3fvARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform3fvARB: location with: count with: value
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform3iARB: location with: v0 with: v1 with: v2 [
	"This method was automatically generated"
	^glExt glUniform3iARB: location with: v0 with: v1 with: v2
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform3ivARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform3ivARB: location with: count with: value
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform4fARB: location with: v0 with: v1 with: v2 with: v3 [
	"This method was automatically generated"
	^glExt glUniform4fARB: location with: v0 with: v1 with: v2 with: v3
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform4fvARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform4fvARB: location with: count with: value
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform4iARB: location with: v0 with: v1 with: v2 with: v3 [
	"This method was automatically generated"
	^glExt glUniform4iARB: location with: v0 with: v1 with: v2 with: v3
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniform4ivARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform4ivARB: location with: count with: value
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniformMatrix2fvARB: location with: count with: transpose with: value [
	"This method was automatically generated"
	^glExt glUniformMatrix2fvARB: location with: count with: transpose with: value
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniformMatrix3fvARB: location with: count with: transpose with: value [
	"This method was automatically generated"
	^glExt glUniformMatrix3fvARB: location with: count with: transpose with: value
]

{ #category : #'as yet unclassified' }
OpenGL >> glUniformMatrix4fvARB: location with: count with: transpose with: value [
	"This method was automatically generated"
	^glExt glUniformMatrix4fvARB: location with: count with: transpose with: value
]

{ #category : #'as yet unclassified' }
OpenGL >> glUnlockArraysEXT [
	"This method was automatically generated"
	^glExt glUnlockArraysEXT
]

{ #category : #'as yet unclassified' }
OpenGL >> glUnmapBufferARB: target [
	"This method was automatically generated"
	^glExt glUnmapBufferARB: target
]

{ #category : #'as yet unclassified' }
OpenGL >> glUseProgramObjectARB: programObj [
	"This method was automatically generated"
	^glExt glUseProgramObjectARB: programObj
]

{ #category : #'as yet unclassified' }
OpenGL >> glValidateProgramARB: programObj [
	"This method was automatically generated"
	^glExt glValidateProgramARB: programObj
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib1dARB: index with: x [
	"This method was automatically generated"
	^glExt glVertexAttrib1dARB: index with: x
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib1dvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib1dvARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib1fARB: index with: x [
	"This method was automatically generated"
	^glExt glVertexAttrib1fARB: index with: x
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib1fvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib1fvARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib1sARB: index with: x [
	"This method was automatically generated"
	^glExt glVertexAttrib1sARB: index with: x
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib1svARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib1svARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib2dARB: index with: x with: y [
	"This method was automatically generated"
	^glExt glVertexAttrib2dARB: index with: x with: y
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib2dvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib2dvARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib2fARB: index with: x with: y [
	"This method was automatically generated"
	^glExt glVertexAttrib2fARB: index with: x with: y
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib2fvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib2fvARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib2sARB: index with: x with: y [
	"This method was automatically generated"
	^glExt glVertexAttrib2sARB: index with: x with: y
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib2svARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib2svARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib3dARB: index with: x with: y with: z [
	"This method was automatically generated"
	^glExt glVertexAttrib3dARB: index with: x with: y with: z
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib3dvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib3dvARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib3fARB: index with: x with: y with: z [
	"This method was automatically generated"
	^glExt glVertexAttrib3fARB: index with: x with: y with: z
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib3fvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib3fvARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib3sARB: index with: x with: y with: z [
	"This method was automatically generated"
	^glExt glVertexAttrib3sARB: index with: x with: y with: z
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib3svARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib3svARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4NbvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4NbvARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4NivARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4NivARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4NsvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4NsvARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4NubARB: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glVertexAttrib4NubARB: index with: x with: y with: z with: w
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4NubvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4NubvARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4NuivARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4NuivARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4NusvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4NusvARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4bvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4bvARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4dARB: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glVertexAttrib4dARB: index with: x with: y with: z with: w
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4dvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4dvARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4fARB: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glVertexAttrib4fARB: index with: x with: y with: z with: w
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4fvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4fvARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4ivARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4ivARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4sARB: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glVertexAttrib4sARB: index with: x with: y with: z with: w
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4svARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4svARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4ubvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4ubvARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4uivARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4uivARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttrib4usvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4usvARB: index with: v
]

{ #category : #'as yet unclassified' }
OpenGL >> glVertexAttribPointerARB: index with: size with: type with: normalized with: stride with: pointer [
	"This method was automatically generated"
	^glExt glVertexAttribPointerARB: index with: size with: type with: normalized with: stride with: pointer
]

{ #category : #accessing }
OpenGL >> glfwWindow [
	self assert: usesGLFW.
	^ myHandle
]

{ #category : #'Keyword API' }
OpenGL >> gluErrorString: error [
	"GLubyte* gluErrorString(GLenum error);"
	| explainedError |
	
	explainedError := error.

	(error = 1280) ifTrue: [ explainedError := 'invalid enum' ].
	(error = 1281) ifTrue: [ explainedError := 'invalid value' ].
	(error = 1282) ifTrue: [ explainedError := 'invalid operation' ].
	(error = 1283) ifTrue: [ explainedError := 'stack overflow' ].
	(error = 1284) ifTrue: [ explainedError := 'stack underflow' ].
	(error = 1285) ifTrue: [ explainedError := 'out of memory' ].

	^ 'gl error: ', explainedError


]

{ #category : #'initialize-release' }
OpenGL >> initialize [
	platform := GLPlatform identifyPlatform new.
	super initialize.
]

{ #category : #activation }
OpenGL >> makeCurrentDuring: aBlock [
	| oldContext |
	oldContext := GL value ifNotNil: [ :gl | gl context deactivate ].
	context activate.
	[ GL value: self during: aBlock ] ensure: [
		context deactivate.
		oldContext ifNotNil: [ :ctx | ctx activate ]]
]

{ #category : #accessing }
OpenGL >> shouldClose [
	^ context shouldClose
]

{ #category : #'initialize-release' }
OpenGL >> swapBuffers [
	context swapBuffers
]

"
A RtFramebufferStore is a target for storing drawing operations in pixels utilizing OpenGL Framebuffers.
To act accordingly, the RtFramebufferStore uses a OpenGL Framebuffer and Texture objects.

Instance Variables
	extent:		of the Framebuffer and Texture respectively
	framebuffer:		OpenGL fbo linked in this Image Store
	texture:		Texture used in harmony with the framebuffer


"
Class {
	#name : #RtFramebufferStore,
	#superclass : #RtImageStore,
	#instVars : [
		'texture',
		'framebuffer',
		'extent'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #accessing }
RtFramebufferStore class >> defaultCanvasClass [

	^ GLCanvas
]

{ #category : #'instance creation' }
RtFramebufferStore class >> extent: aPoint [

	^ self new
		initializeWithExtent: aPoint;
		yourself
]

{ #category : #'instance creation' }
RtFramebufferStore class >> form: aForm [

	^ self new
		initializeWithForm: aForm;
		yourself
]

{ #category : #'gl calls' }
RtFramebufferStore >> clear [

	framebuffer boundDuring: [
		framebuffer gl glClear: GL_COLOR_BUFFER_BIT]
]

{ #category : #accessing }
RtFramebufferStore >> displayTransform [

	^ Matrix4x4 identity
]

{ #category : #accessing }
RtFramebufferStore >> extent [

	^ extent
]

{ #category : #accessing }
RtFramebufferStore >> extent: aPoint [

	extent := aPoint
]

{ #category : #'initialize-release' }
RtFramebufferStore >> extentChanged [

	self notYetImplemented
]

{ #category : #accessing }
RtFramebufferStore >> form [

	^ texture asForm
]

{ #category : #accessing }
RtFramebufferStore >> framebuffer [

	^ framebuffer
]

{ #category : #private }
RtFramebufferStore >> getCanvas [

	^ self class defaultCanvasClass extent: extent framebuffer: framebuffer
]

{ #category : #accessing }
RtFramebufferStore >> glLibrary [

	^ framebuffer ifNotNil: [framebuffer gl] ifNil: [texture gl]
]

{ #category : #accessing }
RtFramebufferStore >> glTextureDo: aBlock [

	aBlock value: texture
]

{ #category : #'initialize-release' }
RtFramebufferStore >> initializeGLSettings [

	self glLibrary glClearColor: 1 with: 1 with: 1 with: 0
]

{ #category : #'initialize-release' }
RtFramebufferStore >> initializeWithExtent: aPoint [

	| ogl |
	extent := aPoint.
	ogl := GL value.
	
	framebuffer := ogl createObject: GLFrameBuffer.
	texture := ogl createObject: GLTexture.
	
	texture extent: extent.
	framebuffer texture2D: texture
]

{ #category : #'initialize-release' }
RtFramebufferStore >> initializeWithForm: aForm [

	extent := aForm extent.
	texture := GL value createObject: GLTexture.
	texture image: aForm
]

{ #category : #drawing }
RtFramebufferStore >> prepareForDrawingOn: aCanvas during: aBlock [

	aCanvas
		transformBy: self displayTransform
		during: [:c |
			framebuffer boundDuring: [
				self glLibrary viewport: (0@0 extent: extent) during: [
					self initializeGLSettings.
					self clear.
					aBlock cull: c]]]
]

{ #category : #'initialize-release' }
RtFramebufferStore >> release [

	super release.
	texture ifNotNil: [texture delete].
	framebuffer ifNotNil: [framebuffer delete]
	
]

{ #category : #'gl calls' }
RtFramebufferStore >> resetViewport [

	self glLibrary glViewport: 0 with: 0 with: extent x with: extent y
]

{ #category : #accessing }
RtFramebufferStore >> texture [

	^ texture
]

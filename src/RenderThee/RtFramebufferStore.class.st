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

{ #category : #drawing }
RtFramebufferStore >> canvasDo: aBlock [

	self glLibrary makeCurrentDuring: [
		super canvasDo: aBlock]
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

{ #category : #initialization }
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

	^ framebuffer gl
]

{ #category : #accessing }
RtFramebufferStore >> glTextureDo: aBlock [

	aBlock value: texture
]

{ #category : #initialization }
RtFramebufferStore >> initializeGLSettings [

	self glLibrary glClearColor: 1 with: 1 with: 1 with: 0
]

{ #category : #initialization }
RtFramebufferStore >> initializeWithExtent: aPoint [

	| ogl |
	extent := aPoint.
	ogl := GL value.
	
	framebuffer := ogl createObject: GLFrameBuffer.
	texture := ogl createObject: GLTexture.
	
	texture extent: extent.
	framebuffer texture2D: texture
]

{ #category : #initialization }
RtFramebufferStore >> initializeWithForm: aForm [

	extent := aForm extent.
	texture := GL value createObject: GLTexture.
	texture image: aForm
]

{ #category : #drawing }
RtFramebufferStore >> prepareForDrawingOn: aCanvas during: aBlock [

	aCanvas
		transformBy: self displayTransform
		clippingTo: (0 @ 0 extent: extent)
		during: [:c |
			framebuffer boundDuring: [
				self glLibrary viewport: (0@0 extent: extent) during: [
					self initializeGLSettings.
					self clear.
					aBlock cull: c]]]
]

{ #category : #'gl calls' }
RtFramebufferStore >> resetViewport [

	self glLibrary glViewport: 0 with: 0 with: extent x with: extent y
]

{ #category : #accessing }
RtFramebufferStore >> texture [

	^ texture
]

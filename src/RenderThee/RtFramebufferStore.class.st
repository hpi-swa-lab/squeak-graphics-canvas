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

{ #category : #initialization }
RtFramebufferStore >> clear [

	framebuffer boundDuring: [
		framebuffer gl glClear: GL_COLOR_BUFFER_BIT]
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
RtFramebufferStore >> framebuffer [

	^ framebuffer
]

{ #category : #accessing }
RtFramebufferStore >> glTextureDo: aBlock [

	aBlock value: texture
]

{ #category : #initialization }
RtFramebufferStore >> initializeWithExtent: aPoint [

	| ogl |
	extent := aPoint.
	ogl := GL value.
	
	framebuffer := ogl createObject: GLFrameBuffer.
	texture := ogl createObject: GLTexture.
	
	texture extent: extent.
	framebuffer texture2D: texture.
	
	framebuffer boundDuring: [
		ogl
			glViewport: 0 with: 0 with: extent x with: extent y;
			glClearColor: 1 with: 1 with: 1 with: 0.
		self clear].
]

{ #category : #initialization }
RtFramebufferStore >> initializeWithForm: aForm [

	extent := aForm extent.
	texture := GL value createObject: GLTexture.
	texture image: aForm
]

{ #category : #initialization }
RtFramebufferStore >> resetViewport [

	framebuffer gl glViewport: 0 with: 0 with: extent x with: extent y
]

{ #category : #accessing }
RtFramebufferStore >> texture [

	^ texture
]

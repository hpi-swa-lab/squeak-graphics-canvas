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

{ #category : #accessing }
RtFramebufferStore >> extent [
	^ extent
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
			glClearColor: 1 with: 1 with: 1 with: 0;
			glClear: GL_COLOR_BUFFER_BIT]
]

{ #category : #initialization }
RtFramebufferStore >> initializeWithForm: aForm [

	extent := aForm extent.
	texture := GL value createObject: GLTexture.
	texture image: aForm
]

{ #category : #accessing }
RtFramebufferStore >> texture [

	^ texture
]

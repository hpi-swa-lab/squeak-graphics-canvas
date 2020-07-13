Class {
	#name : #RtOpenGLLayerCache,
	#superclass : #RtLayerCache,
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
RtOpenGLLayerCache class >> extent: aPoint [

	^ self new
		initializeWithExtent: aPoint;
		yourself
]

{ #category : #accessing }
RtOpenGLLayerCache >> framebuffer [

	^ framebuffer
]

{ #category : #initialization }
RtOpenGLLayerCache >> initializeWithExtent: aPoint [

	| ogl |
	extent := aPoint.
	ogl := GL value.
	
	framebuffer := GLFrameBuffer context: ogl.
	texture := GLTexture context: ogl.
	texture extent: extent.
	framebuffer texture2D: texture.
		
	framebuffer boundDuring: [
		ogl
			glViewport: 0 with: 0 with: extent x with: extent y;
			glClearColor: 1 with: 1 with: 1 with: 0;
			glClear: GL_COLOR_BUFFER_BIT]
]

{ #category : #accessing }
RtOpenGLLayerCache >> texture [

	^ texture
]

Class {
	#name : #RtDisplayFramebufferStore,
	#superclass : #RtImageStore,
	#instVars : [
		'extent',
		'framebuffer'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'as yet unclassified' }
RtDisplayFramebufferStore class >> extent: aPoint [

	^ self new
		initializeWithExtent: aPoint;
		yourself
]

{ #category : #'as yet unclassified' }
RtDisplayFramebufferStore >> displayTransform [
	" a transform that translates this store's coordinate system to have 0,0 in the top left "

	^ (Matrix4x4 withScale: 1 @ -1 @ 1) * (Matrix4x4 withOffset: 0 @ extent y negated @ 0)
]

{ #category : #'as yet unclassified' }
RtDisplayFramebufferStore >> framebuffer [

	^ framebuffer
]

{ #category : #'as yet unclassified' }
RtDisplayFramebufferStore >> initializeWithExtent: aPoint [

	| ogl |
	extent := aPoint.
	ogl := GL value.
	
	framebuffer := ogl createObject: GLDisplayFrameBuffer.
	
	framebuffer boundDuring: [
		ogl
			glViewport: 0 with: 0 with: extent x with: extent y;
			glClearColor: 1 with: 1 with: 1 with: 0;
			glClear: GL_COLOR_BUFFER_BIT]
]

{ #category : #'as yet unclassified' }
RtDisplayFramebufferStore >> prepareForDrawingOn: aCanvas during: aBlock [

	aCanvas transformBy: self displayTransform clippingTo: (0 @ 0 extent: extent) during: [
		framebuffer gl newFrameDo: aBlock.
		framebuffer gl checkForError]
]

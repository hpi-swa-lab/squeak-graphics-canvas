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
		ogl glDisable: GL_CULL_FACE.
		ogl glDisable: GL_DEPTH_TEST.
		ogl glActiveTexture: GL_TEXTURE0.
		ogl
			glClearColor: 1
			with: 1
			with: 1
			with: 0.
		ogl glEnable: GL_BLEND.
		ogl glEnable: GL_SCISSOR_TEST.
		ogl glBlendFuncSeparate: GL_SRC_ALPHA with: GL_ONE_MINUS_SRC_ALPHA with: GL_ONE with: GL_ONE.
		
		ogl
			glViewport: 0 with: 0 with: extent x with: extent y;
			glClearColor: 1 with: 1 with: 1 with: 0;
			glClear: GL_COLOR_BUFFER_BIT]
]

{ #category : #'as yet unclassified' }
RtDisplayFramebufferStore >> prepareForDrawingOn: aCanvas during: aBlock [

	aCanvas transformBy: self displayTransform clippingTo: (0 @ 0 extent: extent) during: [
		framebuffer gl newFrameDo: aBlock.
		framebuffer gl glScissor: 0 with: 0 with: extent x with: extent y.
		framebuffer gl checkForError]
]

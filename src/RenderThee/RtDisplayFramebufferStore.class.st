Class {
	#name : #RtDisplayFramebufferStore,
	#superclass : #RtFramebufferStore,
	#instVars : [
		'glLibrary'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #accessing }
RtDisplayFramebufferStore >> displayTransform [
	" a transform that translates this store's coordinate system to have 0,0 in the top left "
	^ (Matrix2x3 withScale: 1.0 @ -1.0) * (Matrix2x3 withOffset: 0 @ extent y negated)
]

{ #category : #initialization }
RtDisplayFramebufferStore >> extentChanged [

	framebuffer boundDuring: [self resetViewport]
]

{ #category : #accessing }
RtDisplayFramebufferStore >> glLibrary [

	^ glLibrary
]

{ #category : #initialization }
RtDisplayFramebufferStore >> initializeGLSettings [

	glLibrary glDisable: GL_CULL_FACE.
	glLibrary glDisable: GL_DEPTH_TEST.
	glLibrary glActiveTexture: GL_TEXTURE0.
	glLibrary glEnable: GL_BLEND.
	glLibrary glEnable: GL_SCISSOR_TEST.
	glLibrary glBlendFuncSeparate: GL_SRC_ALPHA with: GL_ONE_MINUS_SRC_ALPHA with: GL_ONE with: GL_ONE.
	glLibrary glClearColor: 1 with: 1 with: 1 with: 0.
]

{ #category : #initialization }
RtDisplayFramebufferStore >> initializeWithExtent: aPoint [

	extent := aPoint.
	glLibrary := GL4_5 newGLFWIn: (0@0 extent: extent).
	framebuffer := glLibrary createObject: GLDisplayFrameBuffer.
	
	framebuffer boundDuring: [
		self initializeGLSettings.
		self resetViewport.
		self clear]
]

{ #category : #drawing }
RtDisplayFramebufferStore >> prepareForDrawingOn: aCanvas during: aBlock [

	aCanvas transformBy: self displayTransform clippingTo: (0 @ 0 extent: extent) during: [
		framebuffer gl newFrameDo: [
			self initializeGLSettings.
			self resetViewport.
			self clear.
			aBlock value].
		framebuffer gl glScissor: 0 with: 0 with: extent x with: extent y.
		framebuffer gl checkForError]
]

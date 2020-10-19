Class {
	#name : #RtDisplayFramebufferStore,
	#superclass : #RtFramebufferStore,
	#instVars : [
		'glLibrary'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #drawing }
RtDisplayFramebufferStore >> canvasDo: aBlock [

	self glLibrary makeCurrentDuring: [
		super canvasDo: aBlock]
]

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

	| context |
	self flag: #todo. "This has become very GLFW-specific. New variation point?"
	context := GLFWContext
					newIn: (0@0 extent: aPoint)
					forLibraryClass: GL3_3
					title: 'Squeak (GLFW)'.
	context useMorphicEventHandling.
	extent := aPoint.
	glLibrary := GL3_3 context: context.
	"glLibrary := GL3_3 context: (B3DContext newIn: (0@0 extent: extent))."
	framebuffer := glLibrary createObject: GLDisplayFrameBuffer.
	
	glLibrary makeCurrentDuring: [
		GLFW swapInterval: 0. "disable vsync"
		framebuffer boundDuring: [
			self initializeGLSettings.
			self resetViewport.
			self clear]]
]

{ #category : #drawing }
RtDisplayFramebufferStore >> prepareForDrawingOn: aCanvas during: aBlock [

	self glLibrary newFrameDo: [
		super prepareForDrawingOn: aCanvas during: aBlock]
]

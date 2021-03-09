Class {
	#name : #RtDisplayFramebufferStore,
	#superclass : #RtFramebufferStore,
	#instVars : [
		'glLibrary'
	],
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtDisplayFramebufferStore >> canvasDo: aBlock [

	self glLibrary makeCurrentDuring: [
		super canvasDo: aBlock]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtDisplayFramebufferStore >> displayTransform [
	" a transform that translates this store's coordinate system to have 0,0 in the top left "
	^ (Matrix2x3 withScale: 1.0 @ -1.0) * (Matrix2x3 withOffset: 0 @ extent y negated)
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtDisplayFramebufferStore >> extentChanged [

	framebuffer boundDuring: [self resetViewport]
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/26/2020 12:18'
}
RtDisplayFramebufferStore >> glLibrary [

	^ glLibrary
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/3/2020 15:42'
}
RtDisplayFramebufferStore >> initializeGLSettings [

	GL disable: GL_CULL_FACE.
	GL disable: GL_DEPTH_TEST.
	GL activeTexture: GL_TEXTURE0.
	GL enable: GL_BLEND.
	GL enable: GL_SCISSOR_TEST.
	GL blendFuncSeparate: GL_SRC_ALPHA with: GL_ONE_MINUS_SRC_ALPHA with: GL_ONE with: GL_ONE.
	GL clearColor: 1 with: 1 with: 1 with: 0.
]

{
	#category : #initialization,
	#timestamp : 'stlu 2/18/2021 22:46'
}
RtDisplayFramebufferStore >> initializeWithExtent: aPoint [

	| context |
	self flag: #todo. "This has become very GLFW-specific. New variation point?"
	context := GLFWContext
					newIn: (0@0 extent: aPoint)
					forLibraryClass: GL33Core
					title: 'Squeak (GLFW)'.
	context useMorphicEventHandling.
	extent := aPoint.
	"glLibrary := GL3_3 context: (B3DContext newIn: (0@0 extent: extent))."
	(glLibrary := context library) makeCurrentDuring: [
		framebuffer := GLDisplayFrameBuffer create.
		GLFW swapInterval: 0. "disable vsync"
		framebuffer boundDuring: [
			self initializeGLSettings.
			self resetViewport.
			self clear]]
]

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtDisplayFramebufferStore >> prepareForDrawingOn: aCanvas during: aBlock [

	self glLibrary newFrameDo: [
		super prepareForDrawingOn: aCanvas during: aBlock]
]

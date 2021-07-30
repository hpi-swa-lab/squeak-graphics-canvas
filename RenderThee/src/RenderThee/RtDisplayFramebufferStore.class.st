Class {
	#name : #RtDisplayFramebufferStore,
	#superclass : #RtFramebufferStore,
	#instVars : [
		'glLibrary'
	],
	#category : #'RenderThee-LayerTree'
}

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtDisplayFramebufferStore >> canvasDo: aBlock [

	self glLibrary makeCurrentDuring: [
		super canvasDo: aBlock]
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtDisplayFramebufferStore >> extentChanged [

	framebuffer boundDuring: [self resetViewport]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 10/26/2020 12:18'
}
RtDisplayFramebufferStore >> glLibrary [

	^ glLibrary
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/3/2020 15:42'
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
	#'squeak_changestamp' : 'stlu 7/28/2021 14:56'
}
RtDisplayFramebufferStore >> initializeWithExtent: aPoint [

	| context |
	self flag: #todo. "This has become very GLFW-specific. New variation point?"
	context := GLFWContext
					newIn: (0@0 extent: aPoint)
					version: (GL33 profile: #core)
					title: 'Squeak (GLFW)'.
	context useMorphicEventHandling.
	extent := aPoint.
	"glLibrary := GL3_3 context: (B3DContext newIn: (0@0 extent: extent))."
	(glLibrary := context library) makeCurrentDuring: [
		framebuffer := GLFramebuffer default.
		GLFW swapInterval: 0. "disable vsync"
		framebuffer boundDuring: [
			self initializeGLSettings.
			self resetViewport.
			self clear]]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtDisplayFramebufferStore >> prepareForDrawingOn: aCanvas during: aBlock [

	self glLibrary newFrameDo: [
		super prepareForDrawingOn: aCanvas during: aBlock]
]

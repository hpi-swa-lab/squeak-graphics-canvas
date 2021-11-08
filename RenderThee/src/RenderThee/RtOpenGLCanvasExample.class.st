Class {
	#name : #RtOpenGLCanvasExample,
	#superclass : #RtMorphExample,
	#instVars : [
		'canvas'
	],
	#category : #'RenderThee-Examples'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:23'
}
RtOpenGLCanvasExample >> canvas [

	^ canvas
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:23'
}
RtOpenGLCanvasExample >> canvas: anObject [

	canvas := anObject
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 11/8/2021 16:23'
}
RtOpenGLCanvasExample >> render [

	self updateMorph.
	canvas reset.
	canvas bounds: world bounds.
	picture drawOn: canvas.
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 11/8/2021 16:25'
}
RtOpenGLCanvasExample >> setUp [

	canvas := GLCanvas
		bounds: world bounds
		framebuffer: GLFramebuffer default.
]

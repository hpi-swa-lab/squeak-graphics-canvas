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
	#'squeak_changestamp' : 'stlu 8/11/2021 15:07'
}
RtOpenGLCanvasExample >> render [

	canvas reset.
	canvas bounds: morph bounds.
	canvas fullDrawMorph: morph.
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 7/26/2021 13:14'
}
RtOpenGLCanvasExample >> setUp [

	canvas := GLCanvas
				bounds: morph bounds
				framebuffer: GLFramebuffer default.
]

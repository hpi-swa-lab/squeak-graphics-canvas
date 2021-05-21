Class {
	#name : #RtOpenGLCanvas,
	#superclass : #LOGLTemplate,
	#instVars : [
		'canvas',
		'morph'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:23'
}
RtOpenGLCanvas >> canvas [

	^ canvas
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:23'
}
RtOpenGLCanvas >> canvas: anObject [

	canvas := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:23'
}
RtOpenGLCanvas >> morph [

	^ morph
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:23'
}
RtOpenGLCanvas >> morph: anObject [

	morph := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 22:02'
}
RtOpenGLCanvas >> projectionMatrix [

	^ Matrix4x4
		ortho: morph bounds
		near: 0 far: 1
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 5/19/2021 00:20'
}
RtOpenGLCanvas >> render [

	canvas reset.
	canvas fullDraw: morph.
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 5/18/2021 22:04'
}
RtOpenGLCanvas >> setUp [

	morph := ActiveWorld.
	canvas := GLCanvas extent: morph extent framebuffer: GLFrameBuffer default.
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 5/19/2021 00:20'
}
RtOpenGLCanvas >> windowExtentChanged: newExtent [

	super windowExtentChanged: newExtent.
	canvas projectionMatrix: self projectionMatrix.
]

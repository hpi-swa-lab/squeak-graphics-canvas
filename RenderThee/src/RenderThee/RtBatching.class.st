Class {
	#name : #RtBatching,
	#superclass : #LOGLTemplate,
	#instVars : [
		'canvas',
		'morph'
	],
	#category : #'RenderThee-Batching',
	#'squeak_changestamp' : 'stlu 5/18/2021 17:22'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:23'
}
RtBatching >> canvas [

	^ canvas
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:23'
}
RtBatching >> canvas: anObject [

	canvas := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:23'
}
RtBatching >> morph [

	^ morph
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:23'
}
RtBatching >> morph: anObject [

	morph := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:22'
}
RtBatching >> projectionMatrix [

	^ Matrix4x4
		ortho: morph bounds
		near: -100000 far: 0
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:22'
}
RtBatching >> render [

	canvas projectionMatrix: self projectionMatrix.
	canvas reset.
	canvas fullDraw: morph.
	canvas draw.
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 5/18/2021 17:23'
}
RtBatching >> setUp [

	canvas := RtBatchingCanvas new.
	morph := ActiveWorld.
]

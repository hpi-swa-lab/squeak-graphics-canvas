"
4.10.1
"
Class {
	#name : #RtBatching,
	#superclass : #LOGLTemplate,
	#instVars : [
		'canvas'
	],
	#category : #'RenderThee-Batching',
	#'squeak_changestamp' : '<historical>'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/19/2021 17:20'
}
RtBatching >> projectionMatrix [

	^ ((Matrix4x4
		ortho: ActiveWorld bounds
		near: 0 far: -10000000)
			translatedBy: 0.0@0.0@1.0)
				scaledBy: 1.0@1.0@0.5
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 4/17/2021 10:44'
}
RtBatching >> render [

	canvas reset.
	canvas fullDraw: ActiveWorld.
	canvas draw.
]

{
	#category : #running,
	#'squeak_changestamp' : 'stlu 3/19/2021 13:08'
}
RtBatching >> setUp [

	canvas := GLBatchingCanvas new.
	canvas projectionMatrix: self projectionMatrix
]

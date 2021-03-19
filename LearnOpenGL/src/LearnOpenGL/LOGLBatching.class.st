"
4.10.1
"
Class {
	#name : #LOGLBatching,
	#superclass : #LOGLTemplate,
	#instVars : [
		'canvas'
	],
	#category : #'LearnOpenGL-Advanced',
	#commentStamp : '<historical>'
}

{
	#category : #accessing,
	#timestamp : 'stlu 3/19/2021 17:20'
}
LOGLBatching >> projectionMatrix [

	^ ((Matrix4x4
		ortho: ActiveWorld bounds
		near: 0 far: -10000000)
			translatedBy: 0.0@0.0@1.0)
				scaledBy: 1.0@1.0@0.5
]

{
	#category : #running,
	#timestamp : 'stlu 3/19/2021 18:26'
}
LOGLBatching >> render [

	| time |
	time := Time microsecondsToRun: [
		canvas reset.
		canvas fullDraw: ActiveWorld.
		canvas draw].
	self log: time asString
]

{
	#category : #running,
	#timestamp : 'stlu 3/19/2021 13:08'
}
LOGLBatching >> setUp [

	canvas := GLBatchingCanvas new.
	canvas projectionMatrix: self projectionMatrix
]

Class {
	#name : #GLVertexArray,
	#superclass : #GLObject,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #allocation,
	#timestamp : 'stlu 11/3/2020 15:41'
}
GLVertexArray class >> allocate [

	IntegerArray new: 1 during: [:ids |
		GL genVertexArrays: 1 with: ids.
		^ ids first]
]

{
	#category : #binding,
	#timestamp : 'stlu 11/6/2020 14:43'
}
GLVertexArray class >> bind: anInteger [

	GL bindVertexArray: anInteger
]

{
	#category : #binding,
	#timestamp : 'stlu 11/6/2020 14:45'
}
GLVertexArray class >> currentBinding [

	^ GL getIntegerParameter: GL_VERTEX_ARRAY_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 11/6/2020 14:43'
}
GLVertexArray >> bind [

	self class bind: id
]

{
	#category : #binding,
	#timestamp : 'stlu 11/6/2020 14:51'
}
GLVertexArray >> boundDuring: aBlock [

	| previousID |
	self flag: #todo. "Remember actual objects"
	previousID := self class currentBinding.
	previousID = id ifTrue: [^ aBlock value].
	self class bind: id.
	aBlock ensure: [
		self class bind: previousID]
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/3/2020 15:41'
}
GLVertexArray >> delete [

	GL deleteVertexArrays: 1 with: (IntegerArray with: id)
]

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLVertexArray >> draw: aModeEnum [

	self draw: aModeEnum from: 0 count: numElements
]

{
	#category : #testing,
	#timestamp : 'stlu 10/29/2020 12:15'
}
GLVertexArray >> isVertexArray [

	^ true
]

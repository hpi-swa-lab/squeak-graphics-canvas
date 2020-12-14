Class {
	#name : #GLVertexArray,
	#superclass : #GLObject,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #allocation,
	#timestamp : 'stlu 11/30/2020 19:49'
}
GLVertexArray class >> allocate: n in: anIntegerArray [

	GL genVertexArrays: n with: anIntegerArray
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 18:10'
}
GLVertexArray class >> bindID: anInteger to: target [

	GL bindVertexArray: anInteger
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 18:13'
}
GLVertexArray class >> target [

	^ GL_VERTEX_ARRAY
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
	#timestamp : 'stlu 12/14/2020 12:13'
}
GLVertexArray >> isAllocated [

	^ GL isVertexArray: id
]

{
	#category : #testing,
	#timestamp : 'stlu 10/29/2020 12:15'
}
GLVertexArray >> isVertexArray [

	^ true
]

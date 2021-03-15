Class {
	#name : #GLVertexArray,
	#superclass : #GLObject,
	#instVars : [
		'vertexAttributeBindings',
		'vertexBufferBindings',
		'elementBuffer'
	],
	#category : #'OpenGLObjects-VertexAttributes',
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
	#timestamp : 'stlu 3/14/2021 22:12'
}
GLVertexArray class >> bound [

	^ GLObjectBindings current vertexArray
]

{
	#category : #binding,
	#timestamp : 'stlu 3/14/2021 22:13'
}
GLVertexArray class >> unbind [

	GL bindVertexArray: GL_NONE.
	GLObjectBindings current vertexArray: nil
]

{
	#category : #binding,
	#timestamp : 'stlu 3/14/2021 22:11'
}
GLVertexArray >> bind [

	GL bindVertexArray: id.
	GLObjectBindings current vertexArray: self
]

{
	#category : #binding,
	#timestamp : 'stlu 3/14/2021 22:10'
}
GLVertexArray >> boundDuring: aBlock [

	| previous |
	(previous := self class bound) = self ifTrue: [^ aBlock value].
	self bind.
	^ aBlock ensure: [
		previous
			ifNil: [self class unbind]
			ifNotNil: [previous bind]]
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/3/2020 15:41'
}
GLVertexArray >> delete [

	GL deleteVertexArrays: 1 with: (IntegerArray with: id)
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

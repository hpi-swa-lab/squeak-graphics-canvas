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
	#timestamp : 'stlu 11/6/2020 14:43'
}
GLVertexArray class >> bind: anInteger [

	GL bindVertexArray: anInteger
]

{
	#category : #binding,
	#timestamp : 'stlu 12/1/2020 03:29'
}
GLVertexArray >> bind [

	self class bind: id.
	GL context bind: self to: GL_VERTEX_ARRAY
]

{
	#category : #binding,
	#timestamp : 'stlu 12/1/2020 03:30'
}
GLVertexArray >> boundDuring: aBlock [

	| previous |
	previous := GL context bindingOf: GL_VERTEX_ARRAY.
	previous = self ifTrue: [^ aBlock value].
	self bind.
	^ aBlock ensure: [
		previous
			ifNil: [self unbind]
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

{
	#category : #binding,
	#timestamp : 'stlu 12/1/2020 03:31'
}
GLVertexArray >> unbind [

	self class bind: GL_NONE.
	GL context bind: nil to: GL_VERTEX_ARRAY
]

Class {
	#name : #GLVertexArray,
	#superclass : #GLObject,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #allocation }
GLVertexArray class >> allocate [

	IntegerArray new: 1 during: [:ids |
		GL genVertexArrays: 1 with: ids.
		^ ids first]
]

{ #category : #binding }
GLVertexArray class >> bind: anInteger [

	GL bindVertexArray: anInteger
]

{ #category : #binding }
GLVertexArray class >> currentBinding [

	^ GL getIntegerParameter: GL_VERTEX_ARRAY_BINDING
]

{ #category : #binding }
GLVertexArray >> bind [

	self class bind: id
]

{ #category : #binding }
GLVertexArray >> boundDuring: aBlock [

	| previousID |
	self flag: #todo. "Remember actual objects"
	previousID := self class currentBinding.
	previousID = id ifTrue: [^ aBlock value].
	self class bind: id.
	aBlock ensure: [
		self class bind: previousID]
]

{ #category : #'initialize-release' }
GLVertexArray >> delete [

	GL deleteVertexArrays: 1 with: (IntegerArray with: id)
]

{ #category : #drawing }
GLVertexArray >> draw: aModeEnum [

	self draw: aModeEnum from: 0 count: numElements
]

{ #category : #testing }
GLVertexArray >> isVertexArray [

	^ true
]

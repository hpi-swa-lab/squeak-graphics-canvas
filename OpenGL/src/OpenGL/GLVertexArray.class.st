Class {
	#name : #GLVertexArray,
	#superclass : #GLObject,
	#instVars : [
		'numElements',
		'glType'
	],
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #allocation }
GLVertexArray class >> allocate [

	IntegerArray new: 1 during: [:ids |
		GL genVertexArrays: 1 with: ids.
		^ ids first]
]

{ #category : #binding }
GLVertexArray class >> bindId: anInteger [

	GL bindVertexArray: anInteger
]

{ #category : #binding }
GLVertexArray >> bind [

	self class bindId: id
]

{ #category : #binding }
GLVertexArray >> boundDuring: aBlock [

	| previousID |
	previousID := GL getIntegerParameter: GL_VERTEX_ARRAY_BINDING.
	previousID = id ifTrue: [^ aBlock value].
	self class bindId: id.
	aBlock ensure: [
		self class bindId: previousID]
]

{ #category : #'initialize-release' }
GLVertexArray >> delete [

	GL deleteVertexArrays: 1 with: (IntegerArray with: id)
]

{ #category : #usage }
GLVertexArray >> draw: aModeEnum [

	self draw: aModeEnum from: 0 count: numElements
]

{ #category : #accessing }
GLVertexArray >> glType [

	^ glType
]

{ #category : #testing }
GLVertexArray >> isVertexArray [

	^ true
]

{ #category : #accessing }
GLVertexArray >> numElements [

	^ numElements
]

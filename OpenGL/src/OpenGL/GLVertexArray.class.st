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
GLVertexArray >> bind: anID [

	GL bindVertexArray: anID
]

{ #category : #binding }
GLVertexArray >> bindingEnum [

	^ GL_VERTEX_ARRAY_BUFFER_BINDING
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

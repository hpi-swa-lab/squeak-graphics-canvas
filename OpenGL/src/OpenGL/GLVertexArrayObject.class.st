Class {
	#name : #GLVertexArrayObject,
	#superclass : #GLObject,
	#instVars : [
		'numElements',
		'glType'
	],
	#category : #'OpenGL-Buffers'
}

{ #category : #binding }
GLVertexArrayObject >> bind: anID [

	GL glBindVertexArray: anID
]

{ #category : #binding }
GLVertexArrayObject >> bindingEnum [

	^ GL_VERTEX_ARRAY_BUFFER_BINDING
]

{ #category : #'initialize-release' }
GLVertexArrayObject >> delete [

	GL makeCurrentDuring: [ | ids |
		ids := IntegerArray new: 1.
		ids first: id.
		GL glDeleteVertexArrays: 1 with: ids ]
]

{ #category : #usage }
GLVertexArrayObject >> draw: aModeEnum [

	self draw: aModeEnum from: 0 count: numElements
]

{ #category : #accessing }
GLVertexArrayObject >> glType [

	^ glType
]

{ #category : #'initialize-release' }
GLVertexArrayObject >> initialize [

	| ids |
	super initialize.
	ids := IntegerArray new: 1.
	GL glGenVertexArrays: 1 with: ids.
	id := ids first
]

{ #category : #accessing }
GLVertexArrayObject >> isGLBuffer [

	^ true
]

{ #category : #accessing }
GLVertexArrayObject >> numElements [

	^ numElements
]

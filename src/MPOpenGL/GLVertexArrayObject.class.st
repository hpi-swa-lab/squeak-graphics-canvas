Class {
	#name : #GLVertexArrayObject,
	#superclass : #GLObject,
	#instVars : [
		'numElements',
		'glType'
	],
	#category : #'MPOpenGL-Core'
}

{ #category : #binding }
GLVertexArrayObject >> bind: anID [

	gl glBindVertexArray: anID
]

{ #category : #binding }
GLVertexArrayObject >> bindingEnum [

	^ GL_VERTEX_ARRAY_BUFFER_BINDING
]

{ #category : #'initialize-release' }
GLVertexArrayObject >> delete [

	gl makeCurrentDuring: [ | ids |
		ids := IntegerArray new: 1.
		ids first: id.
		gl glDeleteVertexArrays: 1 with: ids ]
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
GLVertexArrayObject >> initializeWithContext: glContext [

	| ids |
	super initializeWithContext: glContext.
	ids := IntegerArray new: 1.
	gl glGenVertexArrays: 1 with: ids.
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

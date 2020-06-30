Class {
	#name : #GLVertexArrayObject,
	#superclass : #GLObject,
	#instVars : [
		'numElements',
		'glType'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'MPOpenGL-Core'
}

{ #category : #binding }
GLVertexArrayObject >> bind [

	gl glBindVertexArray: id
]

{ #category : #usage }
GLVertexArrayObject >> data: anArray usage: aUsageEnum [

	gl glBindBuffer: GL_ARRAY_BUFFER with: id.
	gl glBufferData: GL_ARRAY_BUFFER with: anArray byteSize with: anArray with: aUsageEnum.
	numElements := anArray size.
	glType := anArray glType
]

{ #category : #'initialize-release' }
GLVertexArrayObject >> delete [

	self notYetImplemented
]

{ #category : #usage }
GLVertexArrayObject >> draw: aModeEnum [

	self draw: aModeEnum from: 0 count: numElements
]

{ #category : #usage }
GLVertexArrayObject >> draw: aModeEnum from: startIndex count: count [

	gl glBindBuffer: GL_ARRAY_BUFFER with: id.
	gl glDrawArrays: aModeEnum with: startIndex with: count
]

{ #category : #accessing }
GLVertexArrayObject >> glType [

	^ glType
]

{ #category : #'initialize-release' }
GLVertexArrayObject >> initializeWith: glContext [

	| ids |
	super initializeWith: glContext.
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

{ #category : #binding }
GLVertexArrayObject >> unbind [

	gl glBindVertexArray: GL_NONE
]

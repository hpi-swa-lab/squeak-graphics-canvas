Class {
	#name : #GLVertexBufferObject,
	#superclass : #GLBuffer,
	#instVars : [
		'numElements',
		'glType',
		'componentsPerVertex',
		'bytesPerElement'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'MPOpenGL-Core'
}

{ #category : #binding }
GLVertexBufferObject >> bind [
	"bind a vbo"
	gl glBindBuffer: GL_ARRAY_BUFFER with: id
]

{ #category : #accessing }
GLVertexBufferObject >> bytesPerElement [

	^ bytesPerElement
]

{ #category : #accessing }
GLVertexBufferObject >> bytesPerElement: anObject [

	bytesPerElement := anObject
]

{ #category : #accessing }
GLVertexBufferObject >> componentsPerVertex [

	^ componentsPerVertex
]

{ #category : #accessing }
GLVertexBufferObject >> componentsPerVertex: anObject [

	componentsPerVertex := anObject
]

{ #category : #'initialize-release' }
GLVertexBufferObject >> create [

	| ids |
	ids := IntegerArray new: 1.
	gl glGenBuffers: 1 with: ids.
	id := ids first
]

{ #category : #usage }
GLVertexBufferObject >> data: anArray usage: aUsageEnum componentsPerVertex: aNumber [

	bytesPerElement := anArray byteSize / anArray size.
	gl glBindBuffer: GL_ARRAY_BUFFER with: id.
	gl glBufferData: GL_ARRAY_BUFFER
		with: anArray byteSize + bytesPerElement * 2
		with: anArray
		with: aUsageEnum.
	numElements := anArray size.
	glType := anArray glType.
	componentsPerVertex := aNumber
]

{ #category : #'initialize-release' }
GLVertexBufferObject >> delete [
	self flag: #todo
]

{ #category : #usage }
GLVertexBufferObject >> draw: aModeEnum [

	self draw: aModeEnum from: 0 count: numElements / componentsPerVertex
]

{ #category : #usage }
GLVertexBufferObject >> draw: aModeEnum from: startIndex count: count [

	gl glBindBuffer: GL_ARRAY_BUFFER with: id.
	gl glDrawArrays: aModeEnum with: startIndex with: count
]

{ #category : #accessing }
GLVertexBufferObject >> glType [

	^ glType
]

{ #category : #accessing }
GLVertexBufferObject >> glType: anObject [

	glType := anObject
]

{ #category : #'initialize-release' }
GLVertexBufferObject >> initializeWith: glContext [

	| ids |
	super initializeWith: glContext.
	ids := IntegerArray new: 1.
	gl glGenBuffers: 1 with: ids.
	id := ids first
]

{ #category : #accessing }
GLVertexBufferObject >> isGLBuffer [

	^ true
]

{ #category : #accessing }
GLVertexBufferObject >> numElements [

	^ numElements
]

{ #category : #accessing }
GLVertexBufferObject >> numElements: anObject [

	numElements := anObject
]

{ #category : #binding }
GLVertexBufferObject >> unbind [
	"unbind a vbo"
	gl glBindBuffer: GL_ARRAY_BUFFER with: GL_NONE 
]

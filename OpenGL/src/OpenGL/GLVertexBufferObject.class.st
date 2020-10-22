Class {
	#name : #GLVertexBufferObject,
	#superclass : #GLBuffer,
	#instVars : [
		'numElements',
		'glType',
		'componentsPerVertex',
		'bytesPerElement'
	],
	#category : #'OpenGL-Buffers'
}

{ #category : #binding }
GLVertexBufferObject >> bind: anID [
	"bind a vbo"
	gl glBindBuffer: GL_ARRAY_BUFFER with: anID
]

{ #category : #binding }
GLVertexBufferObject >> bindingEnum [

	^ GL_VERTEX_BINDING_BUFFER
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

{ #category : #usage }
GLVertexBufferObject >> data: anArray usage: aUsageEnum componentsPerVertex: aNumber [

	bytesPerElement := anArray byteSize / anArray size.
	gl glBindBuffer: GL_ARRAY_BUFFER with: id.
	gl glBufferData: GL_ARRAY_BUFFER
		with: anArray byteSize
		with: anArray
		with: aUsageEnum.
	numElements := anArray size.
	glType := anArray glType.
	componentsPerVertex := aNumber
]

{ #category : #'initialize-release' }
GLVertexBufferObject >> delete [

	gl makeCurrentDuring: [ | ids |
		ids := IntegerArray new: 1.
		ids first: id.
		gl glDeleteBuffers: 1 with: ids ]
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
GLVertexBufferObject >> initializeWithContext: glContext [

	| ids |
	super initializeWithContext: glContext.
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

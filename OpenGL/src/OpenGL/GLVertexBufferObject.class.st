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
	GL glBindBuffer: GL_ARRAY_BUFFER with: anID
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
	GL glBindBuffer: GL_ARRAY_BUFFER with: id.
	GL glBufferData: GL_ARRAY_BUFFER
		with: anArray byteSize
		with: anArray
		with: aUsageEnum.
	numElements := anArray size.
	glType := anArray glType.
	componentsPerVertex := aNumber
]

{ #category : #'initialize-release' }
GLVertexBufferObject >> delete [

	self library makeCurrentDuring: [ | ids |
		ids := IntegerArray new: 1.
		ids first: id.
		GL glDeleteBuffers: 1 with: ids ]
]

{ #category : #usage }
GLVertexBufferObject >> draw: aModeEnum [

	self draw: aModeEnum from: 0 count: numElements / componentsPerVertex
]

{ #category : #usage }
GLVertexBufferObject >> draw: aModeEnum from: startIndex count: count [

	GL glBindBuffer: GL_ARRAY_BUFFER with: id.
	GL glDrawArrays: aModeEnum with: startIndex with: count
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
GLVertexBufferObject >> initialize [

	| ids |
	super initialize.
	ids := IntegerArray new: 1.
	GL glGenBuffers: 1 with: ids.
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

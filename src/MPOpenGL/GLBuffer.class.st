Class {
	#name : #GLBuffer,
	#superclass : #AbstractGLBuffer,
	#instVars : [
		'numElements',
		'glType',
		'componentsPerVertex',
		'bytesPerElement'
	],
	#pools : [
		'GLConstants'
	],
	#category : 'MPOpenGL-Core'
}

{ #category : #binding }
GLBuffer >> bind [
	self flag: #todo
]

{ #category : #accessing }
GLBuffer >> bytesPerElement [

	^ bytesPerElement
]

{ #category : #accessing }
GLBuffer >> bytesPerElement: anObject [

	bytesPerElement := anObject
]

{ #category : #accessing }
GLBuffer >> componentsPerVertex [

	^ componentsPerVertex
]

{ #category : #accessing }
GLBuffer >> componentsPerVertex: anObject [

	componentsPerVertex := anObject
]

{ #category : #'initialize-release' }
GLBuffer >> create [

	| ids |
	ids := IntegerArray new: 1.
	gl glGenBuffers: 1 with: ids.
	id := ids first
]

{ #category : #usage }
GLBuffer >> data: anArray usage: aUsageEnum componentsPerVertex: aNumber [

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

{ #category : #destruction }
GLBuffer >> delete [
	self flag: #todo
]

{ #category : #usage }
GLBuffer >> draw: aModeEnum [

	self draw: aModeEnum from: 0 count: numElements / componentsPerVertex
]

{ #category : #usage }
GLBuffer >> draw: aModeEnum from: startIndex count: count [

	gl glBindBuffer: GL_ARRAY_BUFFER with: id.
	gl glDrawArrays: aModeEnum with: startIndex with: count
]

{ #category : #accessing }
GLBuffer >> glType [

	^ glType
]

{ #category : #accessing }
GLBuffer >> glType: anObject [

	glType := anObject
]

{ #category : #accessing }
GLBuffer >> isGLBuffer [

	^ true
]

{ #category : #accessing }
GLBuffer >> numElements [

	^ numElements
]

{ #category : #accessing }
GLBuffer >> numElements: anObject [

	numElements := anObject
]

{ #category : #binding }
GLBuffer >> unbind [
	self flag: #todo
]

Class {
	#name : #GLVertexArrayObject,
	#superclass : #AbstractGLObject,
	#instVars : [
		'numElements',
		'glType'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'MPOpenGL-Core'
}

{ #category : #'instance creation' }
GLVertexArrayObject class >> newFor: openGlInterface [
	^ self new
		gl: openGlInterface;
		createBuffer;
		yourself.
]

{ #category : #binding }
GLVertexArrayObject >> bind [
	self flag: #todo
]

{ #category : #usage }
GLVertexArrayObject >> bind: ogl [

	ogl glBindVertexArray: id
]

{ #category : #binding }
GLVertexArrayObject >> bindable [
	^true
]

{ #category : #'initialize-release' }
GLVertexArrayObject >> createBuffer [

	| ids |
	ids := IntegerArray new: 1.
	gl glGenVertexArrays: 1 with: ids.
	id := ids at: 1
]

{ #category : #usage }
GLVertexArrayObject >> data: anArray usage: aUsageEnum [

	gl glBindBuffer: GL_ARRAY_BUFFER with: id.
	gl glBufferData: GL_ARRAY_BUFFER with: anArray byteSize with: anArray with: aUsageEnum.
	numElements := anArray size.
	glType := anArray glType
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
	self flag: #todo
]

{ #category : #usage }
GLVertexArrayObject >> unbind: ogl [

	ogl glBindVertexArray: GL_NONE
]

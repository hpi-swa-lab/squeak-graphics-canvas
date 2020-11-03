Class {
	#name : #GLBuffer,
	#superclass : #GLObject,
	#instVars : [
		'size',
		'numElements',
		'componentsPerVertex',
		'bytesPerElement'
	],
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #allocation }
GLBuffer class >> allocate [

	IntegerArray new: 1 during: [:ids |
		GL genBuffers: 1 with: ids.
		^ ids first]
]

{ #category : #binding }
GLBuffer class >> bind: glBuffer [

	self bindId: glBuffer id
]

{ #category : #binding }
GLBuffer class >> bind: glBuffer during: aBlock [

	| previousBuffer |
	self flag: #todo. "Remember actual objects"
	(previousBuffer := self getBoundId) = glBuffer id ifTrue: [^ aBlock value].
	self bindId: glBuffer id.
	aBlock ensure: [
		self bindId: previousBuffer]
]

{ #category : #binding }
GLBuffer class >> bindId: anInteger [

	self bindId: anInteger to: self target
]

{ #category : #binding }
GLBuffer class >> bindId: anInteger to: target [

	GL bindBuffer: target with: anInteger
]

{ #category : #binding }
GLBuffer class >> bindingEnum [

	self subclassResponsibility
]

{ #category : #binding }
GLBuffer class >> getBoundId [

	^ GL getIntegerParameter: self bindingEnum
]

{ #category : #binding }
GLBuffer class >> target [

	self subclassResponsibility
]

{ #category : #binding }
GLBuffer >> bind [

	self class bind: self
]

{ #category : #binding }
GLBuffer >> boundDuring: aBlock [

	self class bind: self during: aBlock
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

{ #category : #usage }
GLBuffer >> data: anArray usage: aUsageEnum componentsPerVertex: aNumber [

	bytesPerElement := anArray byteSize / anArray size.
	GL bindBuffer: GL_ARRAY_BUFFER with: id.
	GL bufferData: GL_ARRAY_BUFFER
		with: anArray byteSize
		with: anArray
		with: aUsageEnum.
	numElements := anArray size.
	"glType := anArray glType."
	componentsPerVertex := aNumber
]

{ #category : #'initialize-release' }
GLBuffer >> delete [

	GL deleteBuffers: 1 with: (IntegerArray with: id)
]

{ #category : #usage }
GLBuffer >> draw: aModeEnum [

	self draw: aModeEnum from: 0 count: numElements / componentsPerVertex
]

{ #category : #usage }
GLBuffer >> draw: aModeEnum from: startIndex count: count [

	self boundDuring: [
		GL drawArrays: aModeEnum with: startIndex with: count]
]

{ #category : #testing }
GLBuffer >> isBuffer [

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
GLBuffer >> target [

	^ self class target
]

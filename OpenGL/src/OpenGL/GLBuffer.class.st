Class {
	#name : #GLBuffer,
	#superclass : #GLObject,
	#instVars : [
		'size',
		'usage'
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
GLBuffer >> bindingEnum [

	^ self class bindingEnum
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

{ #category : #data }
GLBuffer >> data: aRawBitsArray [

	self data: aRawBitsArray size: aRawBitsArray byteSize offset: 0
]

{ #category : #data }
GLBuffer >> data: aRawBitsArray offset: byteOffset [

	self data: aRawBitsArray size: aRawBitsArray byteSize offset: byteOffset
]

{ #category : #data }
GLBuffer >> data: aRawBitsArray size: byteSize [

	self data: aRawBitsArray size: byteSize offset: 0
]

{ #category : #data }
GLBuffer >> data: aRawBitsArray size: byteSize offset: byteOffset [

	byteSize + byteOffset > size ifTrue: [
		usage ifNil: [^ self error: 'Buffer store needs to be initialized. See #usage:size:data:'].
		byteOffset ~= 0 ifTrue: [^ self error: 'Allocated buffer store too small. Auto-reinitialization would leave undefined gap.'].
		^ self usage: usage size: byteSize data: aRawBitsArray].
	self boundDuring: [
		GL
			bufferSubData: self bindingEnum
			with: byteOffset
			with: byteSize
			with: aRawBitsArray]
]

{ #category : #'initialize-release' }
GLBuffer >> delete [

	GL deleteBuffers: 1 with: (IntegerArray with: id)
]

{ #category : #drawing }
GLBuffer >> draw: aModeEnum [

	self draw: aModeEnum from: 0 count: numElements / componentsPerVertex
]

{ #category : #drawing }
GLBuffer >> draw: aModeEnum from: startIndex count: count [

	self boundDuring: [
		GL drawArrays: aModeEnum with: startIndex with: count]
]

{ #category : #'initialize-release' }
GLBuffer >> initialize [

	super initialize.
	size := 0
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

{ #category : #data }
GLBuffer >> usage: usageEnum data: aRawBitsArray [ 

	self usage: usageEnum size: aRawBitsArray byteSize data: aRawBitsArray
]

{ #category : #data }
GLBuffer >> usage: usageEnum size: byteSize [

	self usage: usageEnum size: byteSize data: nil
]

{ #category : #data }
GLBuffer >> usage: usageEnum size: byteSize data: aRawBitsArray [

	self boundDuring: [
		GL
			bufferData: self bindingEnum
			with: byteSize
			with: aRawBitsArray
			with: usageEnum].
	size := byteSize.
	usage := usageEnum.
]

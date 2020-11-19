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
GLBuffer class >> bind: id [

	self bind: id to: self target
]

{ #category : #binding }
GLBuffer class >> bind: id to: target [

	GL bindBuffer: target with: id
]

{ #category : #binding }
GLBuffer class >> bindingEnum [

	self subclassResponsibility
]

{ #category : #binding }
GLBuffer class >> currentBinding [

	^ GL getIntegerParameter: self bindingEnum
]

{ #category : #binding }
GLBuffer class >> target [

	self subclassResponsibility
]

{ #category : #binding }
GLBuffer >> bind [

	self class bind: id
]

{ #category : #binding }
GLBuffer >> boundDuring: aBlock [

	| previousID |
	self flag: #todo. "Remember actual objects"
	previousID := self class currentBinding.
	previousID = id ifTrue: [^ aBlock value].
	self class bind: id.
	aBlock ensure: [
		self class bind: previousID]
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
			bufferSubData: self target
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

	self flag: #todo. "HACKIDY HACK HACK Oh god no..."
	self draw: aModeEnum from: 0 count: 4
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
GLBuffer >> size [

	^ size
]

{ #category : #binding }
GLBuffer >> target [

	^ self class target
]

{ #category : #accessing }
GLBuffer >> usage [

	^ usage
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
			bufferData: self target
			with: byteSize
			with: aRawBitsArray
			with: usageEnum].
	size := byteSize.
	usage := usageEnum.
]

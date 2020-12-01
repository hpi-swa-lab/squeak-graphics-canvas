Class {
	#name : #GLBuffer,
	#superclass : #GLObject,
	#instVars : [
		'size',
		'usage'
	],
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #allocation,
	#timestamp : ''
}
GLBuffer class >> allocate [

	IntegerArray new: 1 during: [:ids |
		GL genBuffers: 1 with: ids.
		^ ids first]
]

{
	#category : #binding,
	#timestamp : ''
}
GLBuffer class >> bind: id [

	self bind: id to: self target
]

{
	#category : #binding,
	#timestamp : ''
}
GLBuffer class >> bind: id to: target [

	GL bindBuffer: target with: id
]

{
	#category : #binding,
	#timestamp : ''
}
GLBuffer class >> bindingEnum [

	self subclassResponsibility
]

{
	#category : #binding,
	#timestamp : ''
}
GLBuffer class >> currentBinding [

	^ GL getIntegerParameter: self bindingEnum
]

{
	#category : #binding,
	#timestamp : ''
}
GLBuffer class >> target [

	self subclassResponsibility
]

{
	#category : #binding,
	#timestamp : ''
}
GLBuffer >> bind [

	self class bind: id
]

{
	#category : #binding,
	#timestamp : ''
}
GLBuffer >> boundDuring: aBlock [

	| previousID |
	self flag: #todo. "Remember actual objects"
	previousID := self class currentBinding.
	previousID = id ifTrue: [^ aBlock value].
	self class bind: id.
	aBlock ensure: [
		self class bind: previousID]
]

{
	#category : #data,
	#timestamp : ''
}
GLBuffer >> data: aRawBitsArray [

	self data: aRawBitsArray size: aRawBitsArray byteSize offset: 0
]

{
	#category : #data,
	#timestamp : ''
}
GLBuffer >> data: aRawBitsArray offset: byteOffset [

	self data: aRawBitsArray size: aRawBitsArray byteSize offset: byteOffset
]

{
	#category : #data,
	#timestamp : ''
}
GLBuffer >> data: aRawBitsArray size: byteSize [

	self data: aRawBitsArray size: byteSize offset: 0
]

{
	#category : #data,
	#timestamp : ''
}
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

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLBuffer >> delete [

	GL deleteBuffers: 1 with: (IntegerArray with: id)
]

{
	#category : #drawing,
	#timestamp : ''
}
GLBuffer >> draw: aModeEnum [

	self flag: #todo. "HACKIDY HACK HACK Oh god no..."
	self draw: aModeEnum from: 0 count: 4
]

{
	#category : #drawing,
	#timestamp : ''
}
GLBuffer >> draw: aModeEnum from: startIndex count: count [

	self boundDuring: [
		GL drawArrays: aModeEnum with: startIndex with: count]
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLBuffer >> initialize [

	super initialize.
	size := 0
]

{
	#category : #testing,
	#timestamp : ''
}
GLBuffer >> isBuffer [

	^ true
]

{
	#category : #accessing,
	#timestamp : ''
}
GLBuffer >> size [

	^ size
]

{
	#category : #binding,
	#timestamp : ''
}
GLBuffer >> target [

	^ self class target
]

{
	#category : #accessing,
	#timestamp : ''
}
GLBuffer >> usage [

	^ usage
]

{
	#category : #data,
	#timestamp : ''
}
GLBuffer >> usage: usageEnum data: aRawBitsArray [ 

	self usage: usageEnum size: aRawBitsArray byteSize data: aRawBitsArray
]

{
	#category : #data,
	#timestamp : ''
}
GLBuffer >> usage: usageEnum size: byteSize [

	self usage: usageEnum size: byteSize data: nil
]

{
	#category : #data,
	#timestamp : ''
}
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

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
	#timestamp : 'stlu 11/3/2020 15:32'
}
GLBuffer class >> allocate [

	IntegerArray new: 1 during: [:ids |
		GL genBuffers: 1 with: ids.
		^ ids first]
]

{
	#category : #binding,
	#timestamp : 'stlu 11/6/2020 14:53'
}
GLBuffer class >> bind: id [

	self bind: id to: self target
]

{
	#category : #binding,
	#timestamp : 'stlu 11/6/2020 14:53'
}
GLBuffer class >> bind: id to: target [

	GL bindBuffer: target with: id
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 11:42'
}
GLBuffer class >> bindingEnum [

	self subclassResponsibility
]

{
	#category : #binding,
	#timestamp : 'stlu 11/6/2020 14:54'
}
GLBuffer class >> currentBinding [

	^ GL getIntegerParameter: self bindingEnum
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 11:51'
}
GLBuffer class >> target [

	self subclassResponsibility
]

{
	#category : #binding,
	#timestamp : 'stlu 11/6/2020 14:51'
}
GLBuffer >> bind [

	self class bind: id
]

{
	#category : #binding,
	#timestamp : 'stlu 11/6/2020 14:51'
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
	#timestamp : 'stlu 11/6/2020 13:59'
}
GLBuffer >> data: aRawBitsArray [

	self data: aRawBitsArray size: aRawBitsArray byteSize offset: 0
]

{
	#category : #data,
	#timestamp : 'stlu 11/6/2020 13:58'
}
GLBuffer >> data: aRawBitsArray offset: byteOffset [

	self data: aRawBitsArray size: aRawBitsArray byteSize offset: byteOffset
]

{
	#category : #data,
	#timestamp : 'stlu 11/6/2020 13:57'
}
GLBuffer >> data: aRawBitsArray size: byteSize [

	self data: aRawBitsArray size: byteSize offset: 0
]

{
	#category : #data,
	#timestamp : 'stlu 11/6/2020 14:52'
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
	#timestamp : 'stlu 11/3/2020 15:32'
}
GLBuffer >> delete [

	GL deleteBuffers: 1 with: (IntegerArray with: id)
]

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 16:24'
}
GLBuffer >> draw: aModeEnum [

	self flag: #todo. "HACKIDY HACK HACK Oh god no..."
	self draw: aModeEnum from: 0 count: 4
]

{
	#category : #drawing,
	#timestamp : 'stlu 11/3/2020 15:32'
}
GLBuffer >> draw: aModeEnum from: startIndex count: count [

	self boundDuring: [
		GL drawArrays: aModeEnum with: startIndex with: count]
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/6/2020 13:33'
}
GLBuffer >> initialize [

	super initialize.
	size := 0
]

{
	#category : #testing,
	#timestamp : 'stlu 10/29/2020 12:14'
}
GLBuffer >> isBuffer [

	^ true
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/6/2020 14:33'
}
GLBuffer >> size [

	^ size
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 11:53'
}
GLBuffer >> target [

	^ self class target
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/6/2020 14:33'
}
GLBuffer >> usage [

	^ usage
]

{
	#category : #data,
	#timestamp : 'stlu 11/6/2020 13:53'
}
GLBuffer >> usage: usageEnum data: aRawBitsArray [ 

	self usage: usageEnum size: aRawBitsArray byteSize data: aRawBitsArray
]

{
	#category : #data,
	#timestamp : 'stlu 11/6/2020 13:53'
}
GLBuffer >> usage: usageEnum size: byteSize [

	self usage: usageEnum size: byteSize data: nil
]

{
	#category : #data,
	#timestamp : 'stlu 11/6/2020 14:52'
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

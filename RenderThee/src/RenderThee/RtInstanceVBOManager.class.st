Class {
	#name : #RtInstanceVBOManager,
	#superclass : #Object,
	#instVars : [
		'emptyBuffers',
		'fullBuffers',
		'currentBuffer',
		'bufferOffset',
		'bufferSize'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 15:17'
}
RtInstanceVBOManager >> beginNewBuffer: minSize [

	fullBuffers addLast: currentBuffer.
	bufferOffset := 0.
	currentBuffer := (emptyBuffers isEmpty or: [minSize > bufferSize])
		ifTrue: [self createBuffer: (bufferSize max: minSize)]
		ifFalse: [emptyBuffers removeLast].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 15:14'
}
RtInstanceVBOManager >> createBuffer: byteSize [

	self flag: #todo. "GL reference"
	^ GLBuffer create
		usage: GL_DYNAMIC_DRAW size: byteSize;
		yourself
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 4/21/2022 15:15'
}
RtInstanceVBOManager >> initialize [

	super initialize.
	bufferSize := ExternalType uint32_t byteSize * 512 squared.
	emptyBuffers := OrderedCollection new.
	fullBuffers := OrderedCollection new.
	currentBuffer := self createBuffer: bufferSize.
	bufferOffset := 0.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 4/21/2022 13:10'
}
RtInstanceVBOManager >> reset [

	fullBuffers do: [:buffer |
		buffer invalidateData.
		emptyBuffers addLast: buffer].
	currentBuffer invalidateData.
	fullBuffers reset.
	bufferOffset := 0.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/23/2022 14:00'
}
RtInstanceVBOManager >> storeBatch: aBatch [

	| batchSize |
	bufferOffset + (batchSize := aBatch byteSize) > currentBuffer size ifTrue: [
		self beginNewBuffer: batchSize].
	
	currentBuffer
		data: aBatch getInstanceDataHandle
		size: batchSize
		offset: bufferOffset.
	aBatch
		instanceVBO: currentBuffer;
		instanceVBOOffset: bufferOffset.
	bufferOffset := bufferOffset + batchSize.
]

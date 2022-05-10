Class {
	#name : #RtBatchType,
	#superclass : #Object,
	#instVars : [
		'currentBatch',
		'program'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/18/2022 16:55'
}
RtBatchType class >> fragmentShader [

	self subclassResponsibility.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/18/2022 16:55'
}
RtBatchType class >> vertexShader [

	self subclassResponsibility.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 17:18'
}
RtBatchType >> batchClass [

	^ self isTranslucent
		ifTrue: [RtTranslucentBatch]
		ifFalse: [RtOpaqueBatch]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 17:28'
}
RtBatchType >> currentBatch [

	^ currentBatch
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 17:28'
}
RtBatchType >> currentBatch: anObject [

	currentBatch := anObject.
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 4/18/2022 16:55'
}
RtBatchType >> fragmentShader [

	^ self class fragmentShader
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 4/21/2022 22:08'
}
RtBatchType >> initialize [

	currentBatch := self batchClass type: self.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 4/21/2022 16:08'
}
RtBatchType >> isTranslucent [

	^ true
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/17/2022 13:56'
}
RtBatchType >> program [

	^ program
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/17/2022 13:56'
}
RtBatchType >> program: anObject [

	program := anObject.
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 4/18/2022 16:55'
}
RtBatchType >> vertexShader [

	^ self class vertexShader
]

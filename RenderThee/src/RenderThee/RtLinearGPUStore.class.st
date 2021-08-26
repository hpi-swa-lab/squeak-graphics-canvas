Class {
	#name : #RtLinearGPUStore,
	#superclass : #RtGPUStore,
	#instVars : [
		'stagingBuffer',
		'lastElementIndex',
		'alignment'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 7/1/2021 19:19'
}
RtLinearGPUStore class >> extent: aPoint [

	^ self basicNew
		extent: aPoint;
		initialize;
		yourself
]

{
	#category : #adding,
	#'squeak_changestamp' : 'stlu 8/23/2021 10:50'
}
RtLinearGPUStore >> add: num1 [

	stagingBuffer
		at: lastElementIndex + 1
		put: num1.
	
	lastElementIndex := lastElementIndex + alignment.
	^ lastElementIndex - 1 // alignment
]

{
	#category : #adding,
	#'squeak_changestamp' : 'stlu 8/23/2021 15:01'
}
RtLinearGPUStore >> add: num1 add: num2 [

	| address |
	stagingBuffer
		at: lastElementIndex + 1 put: num1;
		at: lastElementIndex + 2 put: num2.
	
	address := lastElementIndex // alignment.
	lastElementIndex := lastElementIndex + 4 roundUpTo: alignment.
	^ address
]

{
	#category : #adding,
	#'squeak_changestamp' : 'stlu 8/23/2021 14:59'
}
RtLinearGPUStore >> add: num1 add: num2 add: num3 add: num4 [

	| address |
	stagingBuffer
		startingAt: lastElementIndex + 1
		put: num1 put: num2 put: num3 put: num4.
	
	address := lastElementIndex // alignment.
	lastElementIndex := lastElementIndex + 4 roundUpTo: alignment.
	^ address
]

{
	#category : #adding,
	#'squeak_changestamp' : 'stlu 8/23/2021 16:57'
}
RtLinearGPUStore >> add: num1 add: num2 add: num3 add: num4 add: num5 add: num6 [

	| address |
	stagingBuffer
		startingAt: lastElementIndex + 1
		put: num1 put: num2 put: num3 put: num4
		put: num5 put: num6.
	
	address := lastElementIndex // alignment.
	lastElementIndex := lastElementIndex + 6 roundUpTo: alignment.
	^ address
]

{
	#category : #adding,
	#'squeak_changestamp' : 'stlu 8/23/2021 16:57'
}
RtLinearGPUStore >> add: num1 add: num2 add: num3 add: num4 add: num5 add: num6 add: num7 add: num8 [

	| address |
	stagingBuffer
		startingAt: lastElementIndex + 1
		put: num1 put: num2 put: num3 put: num4
		put: num5 put: num6 put: num7 put: num8.
	
	address := lastElementIndex // alignment.
	lastElementIndex := lastElementIndex + 8 roundUpTo: alignment.
	^ address
]

{
	#category : #adding,
	#'squeak_changestamp' : 'stlu 8/26/2021 14:15'
}
RtLinearGPUStore >> addFrom: aCollection startingAt: startIndex count: numElements [

	| address |
	stagingBuffer
		replaceFrom: lastElementIndex + 1
		to: lastElementIndex + numElements
		with: aCollection
		startingAt: startIndex.
	address := lastElementIndex // alignment.
	lastElementIndex := lastElementIndex + numElements roundUpTo: alignment.
	^ address
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 11:28'
}
RtLinearGPUStore >> alignment [

	^ alignment
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 11:28'
}
RtLinearGPUStore >> alignment: anObject [

	alignment := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtLinearGPUStore >> lastElementIndex [

	^ lastElementIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtLinearGPUStore >> lastElementIndex: anObject [

	lastElementIndex := anObject
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:32'
}
RtLinearGPUStore >> reset [

	lastElementIndex := 0.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:03'
}
RtLinearGPUStore >> stagingBuffer [

	^ stagingBuffer
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:03'
}
RtLinearGPUStore >> stagingBuffer: anObject [

	stagingBuffer := anObject
]

{
	#category : #staging,
	#'squeak_changestamp' : 'stlu 7/1/2021 20:50'
}
RtLinearGPUStore >> upload [

	| height |
	height := lastElementIndex - 1 // extent x + 1.
	texture
		extent: extent x @ height
		internalFormat: dataFormat
		data: stagingBuffer
		format: textureFormat
		type: textureType
	
	"GL
		textureSubImage2D: texture id
		with: 0
		with: 0
		with: 0
		with: extent x
		with: height
		with: textureFormat
		with: textureType
		with: stagingBuffer"
]

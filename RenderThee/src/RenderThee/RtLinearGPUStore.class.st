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
	#'squeak_changestamp' : 'stlu 4/21/2022 14:33'
}
RtLinearGPUStore >> add: num1 add: num2 [

	| address |
	stagingBuffer
		at: lastElementIndex + 1 put: num1;
		at: lastElementIndex + 2 put: num2.
	
	address := lastElementIndex // alignment.
	lastElementIndex := lastElementIndex + 2 roundUpTo: alignment.
	^ address
]

{
	#category : #adding,
	#'squeak_changestamp' : 'stlu 6/16/2022 14:14'
}
RtLinearGPUStore >> add: num1 add: num2 add: num3 add: num4 [

	| address |
	stagingBuffer
		at: lastElementIndex + 1 put: num1;
		at: lastElementIndex + 2 put: num2;
		at: lastElementIndex + 3 put: num3;
		at: lastElementIndex + 4 put: num4.
	
	address := lastElementIndex // alignment.
	lastElementIndex := lastElementIndex + 4 roundUpTo: alignment.
	^ address
]

{
	#category : #adding,
	#'squeak_changestamp' : 'stlu 6/16/2022 14:14'
}
RtLinearGPUStore >> add: num1 add: num2 add: num3 add: num4 add: num5 [

	| address |
	stagingBuffer
		at: lastElementIndex + 1 put: num1;
		at: lastElementIndex + 2 put: num2;
		at: lastElementIndex + 3 put: num3;
		at: lastElementIndex + 4 put: num4;
		at: lastElementIndex + 5 put: num5.
	
	address := lastElementIndex // alignment.
	lastElementIndex := lastElementIndex + 5 roundUpTo: alignment.
	^ address
]

{
	#category : #adding,
	#'squeak_changestamp' : 'stlu 6/16/2022 14:14'
}
RtLinearGPUStore >> add: num1 add: num2 add: num3 add: num4 add: num5 add: num6 [

	| address |
	stagingBuffer
		at: lastElementIndex + 1 put: num1;
		at: lastElementIndex + 2 put: num2;
		at: lastElementIndex + 3 put: num3;
		at: lastElementIndex + 4 put: num4;
		at: lastElementIndex + 5 put: num5;
		at: lastElementIndex + 6 put: num6.
	
	address := lastElementIndex // alignment.
	lastElementIndex := lastElementIndex + 6 roundUpTo: alignment.
	^ address
]

{
	#category : #adding,
	#'squeak_changestamp' : 'stlu 6/16/2022 14:15'
}
RtLinearGPUStore >> add: num1 add: num2 add: num3 add: num4 add: num5 add: num6 add: num7 add: num8 [

	| address |
	stagingBuffer
		at: lastElementIndex + 1 put: num1;
		at: lastElementIndex + 2 put: num2;
		at: lastElementIndex + 3 put: num3;
		at: lastElementIndex + 4 put: num4;
		at: lastElementIndex + 5 put: num5;
		at: lastElementIndex + 6 put: num6;
		at: lastElementIndex + 7 put: num7;
		at: lastElementIndex + 8 put: num8.
	
	address := lastElementIndex // alignment.
	lastElementIndex := lastElementIndex + 8 roundUpTo: alignment.
	^ address
]

{
	#category : #adding,
	#'squeak_changestamp' : 'stlu 9/28/2021 13:52'
}
RtLinearGPUStore >> addAllFrom: aCollection [

	| address |
	stagingBuffer
		replaceFrom: lastElementIndex + 1
		to: lastElementIndex + aCollection size
		with: aCollection
		startingAt: 1.
	address := lastElementIndex // alignment.
	lastElementIndex := lastElementIndex + aCollection size roundUpTo: alignment.
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
	#category : #adding,
	#'squeak_changestamp' : 'stlu 4/21/2022 20:15'
}
RtLinearGPUStore >> addUnaligned: num1 [

	stagingBuffer
		at: (lastElementIndex := lastElementIndex + 1)
		put: num1.
]

{
	#category : #adding,
	#'squeak_changestamp' : 'stlu 4/21/2022 20:15'
}
RtLinearGPUStore >> alignElementIndex [

	lastElementIndex := lastElementIndex roundUpTo: alignment.
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
	#category : #adding,
	#'squeak_changestamp' : 'stlu 4/21/2022 19:56'
}
RtLinearGPUStore >> nextIndex [

	^ lastElementIndex // alignment
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 4/21/2022 14:36'
}
RtLinearGPUStore >> remainingCapacity [

	^ size - lastElementIndex
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
	#'squeak_changestamp' : 'stlu 4/21/2022 14:27'
}
RtLinearGPUStore >> size [

	^ extent area
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
	#'squeak_changestamp' : 'stlu 8/27/2021 10:44'
}
RtLinearGPUStore >> upload [

	| height |
	height := lastElementIndex // alignment - 1 // extent x + 1.
	"texture
		extent: extent x @ height
		internalFormat: dataFormat
		data: stagingBuffer
		format: textureFormat
		type: textureType"
	
	GL
		textureSubImage2D: texture id
		with: 0
		with: 0
		with: 0
		with: extent x
		with: height
		with: textureFormat
		with: textureType
		with: stagingBuffer
]

Class {
	#name : #RtFloat4Texture,
	#superclass : #RtTexture,
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 20:19'
}
RtFloat4Texture >> add: num1 add: num2 add: num3 add: num4 [

	stagingBuffer
		startingAt: lastElementIndex + 1
		put: num1 put: num2 put: num3 put: num4.
	
	^ lastElementIndex := lastElementIndex + 4
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/8/2021 15:18'
}
RtFloat4Texture >> add: num1 add: num2 add: num3 add: num4 add: num5 [

	stagingBuffer
		startingAt: lastElementIndex + 1
		put: num1 put: num2 put: num3 put: num4
		put: num5.
	
	^ lastElementIndex := lastElementIndex + 8
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:01'
}
RtFloat4Texture >> add: num1 add: num2 add: num3 add: num4 add: num5 add: num6 [

	stagingBuffer
		startingAt: lastElementIndex + 1
		put: num1 put: num2 put: num3 put: num4
		put: num5 put: num6.
	
	^ lastElementIndex := lastElementIndex + 8
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 20:05'
}
RtFloat4Texture >> add: num1 add: num2 add: num3 add: num4 add: num5 add: num6 add: num7 add: num8 [

	stagingBuffer
		startingAt: lastElementIndex + 1
		put: num1 put: num2 put: num3 put: num4
		put: num5 put: num6 put: num7 put: num8.
	
	^ lastElementIndex := lastElementIndex + 8
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 15:47'
}
RtFloat4Texture >> add: num1 add: num2 add: num3 add: num4 add: num5 add: num6 add: num7 add: num8 add: num9 [

	stagingBuffer
		startingAt: lastElementIndex + 1
		put: num1 put: num2 put: num3 put: num4
		put: num5 put: num6 put: num7 put: num8
		put: num9.
	
	^ lastElementIndex := lastElementIndex + 16
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/8/2021 14:56'
}
RtFloat4Texture >> initializeFormat [

	dataFormat := GL_RGBA32F.
	textureFormat := GL_RGBA.
	textureType := GL_FLOAT.
	stagingBuffer := ExternalType float allocate: extent area * 4.
]

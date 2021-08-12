Class {
	#name : #RtInt4Texture,
	#superclass : #RtTexture,
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/8/2021 15:05'
}
RtInt4Texture >> add: num1 [

	stagingBuffer at: lastElementIndex + 1 put: num1.
	
	^ lastElementIndex := lastElementIndex + 4
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/8/2021 15:03'
}
RtInt4Texture >> add: num1 add: num2 add: num3 add: num4 [

	stagingBuffer
		at: lastElementIndex + 1 put: num1;
		at: lastElementIndex + 2 put: num2;
		at: lastElementIndex + 3 put: num3;
		at: lastElementIndex + 4 put: num4.
	
	^ lastElementIndex := lastElementIndex + 4
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/8/2021 17:27'
}
RtInt4Texture >> initializeFormat [

	dataFormat := GL_RGBA32I.
	textureFormat := GL_RGBA_INTEGER.
	textureType := GL_INT.
	stagingBuffer := ExternalType int32_t allocate: extent area * 4.
]

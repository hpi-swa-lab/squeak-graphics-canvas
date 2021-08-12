Class {
	#name : #RtColorTexture,
	#superclass : #RtTexture,
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/8/2021 15:17'
}
RtColorTexture >> add: aColor [

	| pixelValue |
	pixelValue := aColor pixelValueForDepth: 32.
	stagingBuffer
		at: lastElementIndex + 1
		put: pixelValue.
	
	^ lastElementIndex := lastElementIndex + 1
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/8/2021 15:31'
}
RtColorTexture >> initializeFormat [

	dataFormat := GL_RGBA.
	textureFormat := GL_BGRA.
	textureType := GL_UNSIGNED_BYTE.
	stagingBuffer := ExternalType uint32_t allocate: extent area.
]

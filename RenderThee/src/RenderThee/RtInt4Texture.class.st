Class {
	#name : #RtInt4Texture,
	#superclass : #RtLinearGPUStore,
	#category : #'RenderThee-Batching'
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/23/2021 10:43'
}
RtInt4Texture >> initializeFormat [

	dataFormat := GL_RGBA32I.
	textureFormat := GL_RGBA_INTEGER.
	textureType := GL_INT.
	alignment := 4.
	stagingBuffer := ExternalType int32_t allocate: extent area * 4.
]

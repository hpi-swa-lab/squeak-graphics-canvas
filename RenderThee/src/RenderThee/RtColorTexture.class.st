Class {
	#name : #RtColorTexture,
	#superclass : #RtLinearGPUStore,
	#category : #'RenderThee-Batching'
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/23/2021 10:43'
}
RtColorTexture >> initializeFormat [

	dataFormat := GL_RGBA.
	textureFormat := GL_BGRA.
	textureType := GL_UNSIGNED_BYTE.
	alignment := 1.
	stagingBuffer := ExternalType uint32_t allocate: extent area.
]

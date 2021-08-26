Class {
	#name : #RtFloat4Texture,
	#superclass : #RtLinearGPUStore,
	#category : #'RenderThee-Batching'
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/23/2021 10:43'
}
RtFloat4Texture >> initializeFormat [

	dataFormat := GL_RGBA32F.
	textureFormat := GL_RGBA.
	textureType := GL_FLOAT.
	alignment := 4.
	stagingBuffer := ExternalType float allocate: extent area * 4.
]

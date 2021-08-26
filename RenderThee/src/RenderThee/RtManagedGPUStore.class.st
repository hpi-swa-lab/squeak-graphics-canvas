Class {
	#name : #RtManagedGPUStore,
	#superclass : #RtGPUStore,
	#instVars : [
		'allocator'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/25/2021 12:18'
}
RtManagedGPUStore >> initialize [

	super initialize.
	allocator := RtBucketAllocator extent: extent numColumns: 2.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/25/2021 12:18'
}
RtManagedGPUStore >> initializeFormat [

	dataFormat := GL_RGBA.
	textureFormat := GL_BGRA.
	textureType := GL_UNSIGNED_BYTE.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/26/2021 18:03'
}
RtManagedGPUStore >> initializeTexture [

	texture := GLTexture2D create
				wrapS: GL_REPEAT;
				wrapT: GL_REPEAT;
				minificationFilter: GL_LINEAR;
				magnificationFilter: GL_LINEAR;
				yourself.
	
	texture
		extent: extent
		internalFormat: dataFormat
		data: nil
		format: textureFormat
		type: textureType
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 8/26/2021 17:57'
}
RtManagedGPUStore >> uploadForm: aForm [

	| form allocation offset |
	form := aForm asFormOfDepth: 32.
	allocation := allocator allocate: form extent.
	offset := allocation rectangle origin.
	GL
		textureSubImage2D: texture id
		with: 0
		with: offset x
		with: offset y
		with: form width
		with: form height
		with: textureFormat
		with: textureType
		with: form bits.
	^ allocation
]

Class {
	#name : #RtGPUStore,
	#superclass : #Object,
	#instVars : [
		'texture',
		'extent',
		'dataFormat',
		'textureFormat',
		'textureType'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 7/1/2021 19:19'
}
RtGPUStore class >> extent: aPoint [

	^ self basicNew
		extent: aPoint;
		initialize;
		yourself
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtGPUStore >> dataFormat [

	^ dataFormat
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtGPUStore >> dataFormat: anObject [

	dataFormat := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtGPUStore >> extent [

	^ extent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtGPUStore >> extent: anObject [

	extent := anObject
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/8/2021 14:58'
}
RtGPUStore >> initialize [

	self initializeFormat.
	self initializeTexture.
	self reset.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/8/2021 14:59'
}
RtGPUStore >> initializeFormat [

	self subclassResponsibility.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/8/2021 20:01'
}
RtGPUStore >> initializeTexture [

	texture := GLTexture2D create
				wrapS: GL_REPEAT;
				wrapT: GL_REPEAT;
				minificationFilter: GL_NEAREST;
				magnificationFilter: GL_NEAREST;
				yourself.
	
	texture
		extent: extent
		internalFormat: dataFormat
		data: nil
		format: textureFormat
		type: textureType
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/25/2021 11:27'
}
RtGPUStore >> reset [

	
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:03'
}
RtGPUStore >> texture [

	^ texture
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:03'
}
RtGPUStore >> texture: anObject [

	texture := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtGPUStore >> textureFormat [

	^ textureFormat
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtGPUStore >> textureFormat: anObject [

	textureFormat := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtGPUStore >> textureType [

	^ textureType
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtGPUStore >> textureType: anObject [

	textureType := anObject
]

Class {
	#name : #RtTexture,
	#superclass : #Object,
	#instVars : [
		'texture',
		'stagingBuffer',
		'lastElementIndex',
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
RtTexture class >> extent: aPoint [

	^ self basicNew
		extent: aPoint;
		initialize;
		yourself
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtTexture >> dataFormat [

	^ dataFormat
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtTexture >> dataFormat: anObject [

	dataFormat := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtTexture >> extent [

	^ extent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtTexture >> extent: anObject [

	extent := anObject
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/8/2021 14:58'
}
RtTexture >> initialize [

	self initializeFormat.
	self initializeTexture.
	self reset.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/8/2021 14:59'
}
RtTexture >> initializeFormat [

	self subclassResponsibility.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/8/2021 20:01'
}
RtTexture >> initializeTexture [

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
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtTexture >> lastElementIndex [

	^ lastElementIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtTexture >> lastElementIndex: anObject [

	lastElementIndex := anObject
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:32'
}
RtTexture >> reset [

	lastElementIndex := 0.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:03'
}
RtTexture >> stagingBuffer [

	^ stagingBuffer
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:03'
}
RtTexture >> stagingBuffer: anObject [

	stagingBuffer := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:03'
}
RtTexture >> texture [

	^ texture
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:03'
}
RtTexture >> texture: anObject [

	texture := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtTexture >> textureFormat [

	^ textureFormat
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtTexture >> textureFormat: anObject [

	textureFormat := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtTexture >> textureType [

	^ textureType
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:10'
}
RtTexture >> textureType: anObject [

	textureType := anObject
]

{
	#category : #staging,
	#'squeak_changestamp' : 'stlu 7/1/2021 20:50'
}
RtTexture >> upload [

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

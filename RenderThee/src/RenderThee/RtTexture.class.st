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
	#category : #staging,
	#'squeak_changestamp' : 'stlu 7/1/2021 20:19'
}
RtTexture >> add: num1 add: num2 add: num3 add: num4 [

	stagingBuffer
		startingAt: lastElementIndex + 1
		put: num1 put: num2 put: num3 put: num4.
	
	^ lastElementIndex := lastElementIndex + 4
]

{
	#category : #staging,
	#'squeak_changestamp' : 'stlu 7/1/2021 20:05'
}
RtTexture >> add: num1 add: num2 add: num3 add: num4 add: num5 add: num6 add: num7 add: num8 [

	stagingBuffer
		startingAt: lastElementIndex + 1
		put: num1 put: num2 put: num3 put: num4
		put: num5 put: num6 put: num7 put: num8.
	
	^ lastElementIndex := lastElementIndex + 8
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
	#'squeak_changestamp' : 'stlu 7/1/2021 20:34'
}
RtTexture >> initialize [

	texture := GLTexture2D create
				wrapS: GL_REPEAT;
				wrapT: GL_REPEAT;
				minificationFilter: GL_LINEAR;
				magnificationFilter: GL_LINEAR;
				yourself.
	dataFormat := GL_RGBA32F.
	textureFormat := GL_RGBA.
	textureType := GL_FLOAT.
	stagingBuffer := ExternalType float allocate: extent area * 4.
	self reset.
	
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

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
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/1/2021 14:09'
}
RtManagedGPUStore >> minMagFilter [

	^ GL_LINEAR
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/7/2022 15:50'
}
RtManagedGPUStore >> uploadForm: aForm [

	| form allocation rect |
	form := aForm asFormOfDepth: 32.
	form == aForm ifTrue: [form unhibernate].
	allocation := allocator allocate: form extent.
	allocation ifNil: [^ nil].
	rect := allocation rectangle.
	GL
		textureSubImage2D: texture id
		with: 0
		with: rect left
		with: rect top
		with: form width
		with: form height
		with: textureFormat
		with: textureType
		with: form bits.
	^ allocation
]

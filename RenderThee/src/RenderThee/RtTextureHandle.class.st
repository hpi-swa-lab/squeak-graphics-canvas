Class {
	#name : #RtTextureHandle,
	#superclass : #Object,
	#instVars : [
		'atlasRegion',
		'regionIndex',
		'lastFrame',
		'referenceCounter'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:33'
}
RtTextureHandle >> addReference [

	^ referenceCounter := referenceCounter + 1
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:20'
}
RtTextureHandle >> atlasRegion [

	^ atlasRegion
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:20'
}
RtTextureHandle >> atlasRegion: anObject [

	atlasRegion := anObject.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:31'
}
RtTextureHandle >> initialize [

	self reset.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:20'
}
RtTextureHandle >> lastFrame [

	^ lastFrame
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:20'
}
RtTextureHandle >> lastFrame: anObject [

	lastFrame := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:24'
}
RtTextureHandle >> referenceCounter [

	^ referenceCounter
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:24'
}
RtTextureHandle >> referenceCounter: anObject [

	referenceCounter := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:24'
}
RtTextureHandle >> regionIndex [

	^ regionIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:24'
}
RtTextureHandle >> regionIndex: anObject [

	regionIndex := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:33'
}
RtTextureHandle >> removeReference [

	^ referenceCounter := referenceCounter - 1
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:31'
}
RtTextureHandle >> reset [

	referenceCounter := 0.
	atlasRegion := nil.
	regionIndex := nil.
	lastFrame := nil.
]

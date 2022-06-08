Class {
	#name : #RtAtlasRegion,
	#superclass : #Object,
	#instVars : [
		'rectangle',
		'provider'
	],
	#category : #'RenderThee-Atlas'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/28/2021 14:59'
}
RtAtlasRegion class >> rectangle: aRectangle provider: anObject [

	^ self basicNew
		rectangle: aRectangle;
		provider: anObject
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/1/2022 14:53'
}
RtAtlasRegion >> deallocate [

	provider deallocate: self.
]

{
	#category : #printing,
	#'squeak_changestamp' : 'stlu 6/28/2021 20:24'
}
RtAtlasRegion >> printOn: aStream [

	super printOn: aStream.
	aStream
		nextPutAll: '(';
		print: rectangle;
		nextPutAll: ')'.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 14:58'
}
RtAtlasRegion >> provider [

	^ provider
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 14:58'
}
RtAtlasRegion >> provider: anObject [

	provider := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 14:58'
}
RtAtlasRegion >> rectangle [

	^ rectangle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 14:58'
}
RtAtlasRegion >> rectangle: anObject [

	rectangle := anObject
]

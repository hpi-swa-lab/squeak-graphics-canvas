Class {
	#name : #RtAtlasAllocation,
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
RtAtlasAllocation class >> rectangle: aRectangle provider: anObject [

	^ self basicNew
		rectangle: aRectangle;
		provider: anObject
]

{
	#category : #printing,
	#'squeak_changestamp' : 'stlu 6/28/2021 20:24'
}
RtAtlasAllocation >> printOn: aStream [

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
RtAtlasAllocation >> provider [

	^ provider
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 14:58'
}
RtAtlasAllocation >> provider: anObject [

	provider := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 14:58'
}
RtAtlasAllocation >> rectangle [

	^ rectangle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 14:58'
}
RtAtlasAllocation >> rectangle: anObject [

	rectangle := anObject
]

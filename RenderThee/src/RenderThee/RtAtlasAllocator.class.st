Class {
	#name : #RtAtlasAllocator,
	#superclass : #Object,
	#instVars : [
		'extent'
	],
	#category : #'RenderThee-Atlas'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/28/2021 09:39'
}
RtAtlasAllocator class >> extent: aPoint [

	^ self basicNew
		extent: aPoint;
		initialize;
		yourself
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 09:27'
}
RtAtlasAllocator >> extent [

	^ extent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 09:27'
}
RtAtlasAllocator >> extent: anObject [

	extent := anObject
]

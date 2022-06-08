Class {
	#name : #RtAtlasAllocator,
	#superclass : #Object,
	#instVars : [
		'width',
		'height'
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
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/1/2022 15:18'
}
RtAtlasAllocator >> allocate: requestedExtent [

	^ self allocateWidth: requestedExtent x height: requestedExtent y
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/1/2022 15:18'
}
RtAtlasAllocator >> allocateWidth: requestedWidth height: requestedHeight [

	self subclassResponsibility.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 15:13'
}
RtAtlasAllocator >> allocatedSpace [

	self subclassResponsibility
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/30/2022 17:50'
}
RtAtlasAllocator >> extent [

	^ width @ height
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/30/2022 17:50'
}
RtAtlasAllocator >> extent: aPoint [

	width := aPoint x.
	height := aPoint y.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 15:14'
}
RtAtlasAllocator >> freeSpace [

	^ self totalSpace - self allocatedSpace
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 15:14'
}
RtAtlasAllocator >> height [

	^ height
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 15:14'
}
RtAtlasAllocator >> height: anObject [

	height := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 15:14'
}
RtAtlasAllocator >> totalSpace [

	^ width * height
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 15:14'
}
RtAtlasAllocator >> width [

	^ width
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 15:14'
}
RtAtlasAllocator >> width: anObject [

	width := anObject.
]

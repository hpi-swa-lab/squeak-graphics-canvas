Class {
	#name : #RtBucketAllocatorBucket,
	#superclass : #Object,
	#instVars : [
		'shelf',
		'x',
		'next',
		'referenceCount',
		'freeWidth'
	],
	#pools : [
		'PicConstants'
	],
	#category : #'RenderThee-Atlas'
}

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/7/2022 14:10'
}
RtBucketAllocatorBucket >> allocate: width [

	| minX minY rectangle |
	minX := x + shelf bucketWidth - freeWidth.
	minY := shelf y.
	rectangle := RectanglePool borrow
		setLeft: minX
		top: minY
		right: minX + width
		bottom: minY + shelf height.
	
	freeWidth := freeWidth - width.
	referenceCount := referenceCount + 1.
	self atlas spaceAllocated: rectangle area.
	
	^ RtAtlasRegion
		rectangle: rectangle
		provider: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 16:54'
}
RtBucketAllocatorBucket >> allocatedBounds [

	^ x @ shelf y
		extent: shelf bucketWidth - freeWidth @ shelf height
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 17:04'
}
RtBucketAllocatorBucket >> atlas [

	^ shelf atlas
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/29/2021 09:41'
}
RtBucketAllocatorBucket >> bounds [

	^ x @ shelf y
		extent: shelf bucketWidth @ shelf height
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/1/2022 14:58'
}
RtBucketAllocatorBucket >> deallocate: anAllocation [

	referenceCount := referenceCount - 1.
	referenceCount > 0 ifTrue: [^ self].
	shelf deallocate: self.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 16:55'
}
RtBucketAllocatorBucket >> freeWidth [

	^ freeWidth
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 16:55'
}
RtBucketAllocatorBucket >> freeWidth: anInteger [

	freeWidth := anInteger.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 14:10'
}
RtBucketAllocatorBucket >> height [

	^ shelf height
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/1/2022 15:03'
}
RtBucketAllocatorBucket >> initialize [

	referenceCount := 0.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 13:31'
}
RtBucketAllocatorBucket >> next [

	^ next
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 13:31'
}
RtBucketAllocatorBucket >> next: anObject [

	next := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:22'
}
RtBucketAllocatorBucket >> referenceCount [

	^ referenceCount
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:22'
}
RtBucketAllocatorBucket >> referenceCount: anObject [

	referenceCount := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:22'
}
RtBucketAllocatorBucket >> shelf [

	^ shelf
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:22'
}
RtBucketAllocatorBucket >> shelf: anObject [

	shelf := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:22'
}
RtBucketAllocatorBucket >> x [

	^ x
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:22'
}
RtBucketAllocatorBucket >> x: anObject [

	x := anObject
]

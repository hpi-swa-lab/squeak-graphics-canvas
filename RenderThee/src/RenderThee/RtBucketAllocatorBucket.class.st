Class {
	#name : #RtBucketAllocatorBucket,
	#superclass : #Object,
	#instVars : [
		'index',
		'x',
		'freeSpace',
		'next',
		'referenceCount',
		'itemCount',
		'shelf',
		'generation'
	],
	#category : #'RenderThee-Atlas'
}

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/28/2021 15:00'
}
RtBucketAllocatorBucket >> allocate: width [

	| minX minY rectangle |
	minX := x + shelf bucketWidth - freeSpace.
	minY := shelf y.
	rectangle := Rectangle
					left: minX
					right: minX + width
					top: minY
					bottom: minY + shelf height.
	
	freeSpace := freeSpace - width.
	referenceCount := referenceCount + 1.
	itemCount := itemCount + 1.
	
	^ RtAtlasAllocation
		rectangle: rectangle
		provider: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/29/2021 09:51'
}
RtBucketAllocatorBucket >> allocatedBounds [

	^ x @ shelf y
		extent: shelf bucketWidth - freeSpace @ shelf height
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
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:22'
}
RtBucketAllocatorBucket >> freeSpace [

	^ freeSpace
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:22'
}
RtBucketAllocatorBucket >> freeSpace: anObject [

	freeSpace := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:22'
}
RtBucketAllocatorBucket >> generation [

	^ generation
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:22'
}
RtBucketAllocatorBucket >> generation: anObject [

	generation := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 14:10'
}
RtBucketAllocatorBucket >> height [

	^ shelf height
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 13:28'
}
RtBucketAllocatorBucket >> index [

	^ index
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 13:28'
}
RtBucketAllocatorBucket >> index: anObject [

	index := anObject
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/28/2021 16:41'
}
RtBucketAllocatorBucket >> initialize [

	referenceCount := 0.
	itemCount := 0.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:22'
}
RtBucketAllocatorBucket >> itemCount [

	^ itemCount
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:22'
}
RtBucketAllocatorBucket >> itemCount: anObject [

	itemCount := anObject
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

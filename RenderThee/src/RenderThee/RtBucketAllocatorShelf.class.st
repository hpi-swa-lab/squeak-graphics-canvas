Class {
	#name : #RtBucketAllocatorShelf,
	#superclass : #Object,
	#instVars : [
		'atlas',
		'x',
		'y',
		'height',
		'firstBucket',
		'bucketWidth'
	],
	#category : #'RenderThee-Atlas'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 15:10'
}
RtBucketAllocatorShelf >> atlas [

	^ atlas
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 15:10'
}
RtBucketAllocatorShelf >> atlas: anObject [

	atlas := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:21'
}
RtBucketAllocatorShelf >> bucketWidth [

	^ bucketWidth
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:21'
}
RtBucketAllocatorShelf >> bucketWidth: anObject [

	bucketWidth := anObject
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/1/2022 17:17'
}
RtBucketAllocatorShelf >> deallocate: aBucket [

	atlas spaceDeallocated: bucketWidth - aBucket freeWidth * height.
	aBucket freeWidth: bucketWidth.
	self flag: #todo. "we may want to handle empty shelves specially"
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 20:03'
}
RtBucketAllocatorShelf >> firstBucket [

	^ firstBucket
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 20:03'
}
RtBucketAllocatorShelf >> firstBucket: anObject [

	firstBucket := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:21'
}
RtBucketAllocatorShelf >> height [

	^ height
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:21'
}
RtBucketAllocatorShelf >> height: anObject [

	height := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:21'
}
RtBucketAllocatorShelf >> x [

	^ x
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:21'
}
RtBucketAllocatorShelf >> x: anObject [

	x := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:21'
}
RtBucketAllocatorShelf >> y [

	^ y
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 11:21'
}
RtBucketAllocatorShelf >> y: anObject [

	y := anObject
]

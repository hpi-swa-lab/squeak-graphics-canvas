Class {
	#name : #RtBucketAllocator,
	#superclass : #RtAtlasAllocator,
	#instVars : [
		'shelves',
		'availableHeight',
		'alignment',
		'currentColumn',
		'columnWidth',
		'numColumns',
		'allocatedSpace'
	],
	#category : #'RenderThee-Atlas'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/29/2021 10:38'
}
RtBucketAllocator class >> extent: anExtent [

	^ self
		extent: anExtent
		numColumns: 1
		alignment: 1@1
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/29/2021 10:37'
}
RtBucketAllocator class >> extent: anExtent numColumns: numColumns [

	^ self
		extent: anExtent
		numColumns: numColumns
		alignment: 1@1
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/29/2021 10:39'
}
RtBucketAllocator class >> extent: anExtent numColumns: numColumns alignment: aPoint [

	^ self basicNew
		extent: anExtent;
		numColumns: numColumns;
		alignment: aPoint;
		initialize;
		yourself
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/29/2021 10:08'
}
RtBucketAllocator >> addShelf: itemExtent [

	| height numBuckets bucketWidth previousBucket shelf |
	(availableHeight ~= 0 and: [availableHeight < itemExtent y] and: [self canAddColumn]) ifTrue: [
		"We have room to add a shelf in a new column but current one doesn't have enough available space.
		First add a shelf to fill the current column's remaining height."
		self addShelf: 0@availableHeight].
	
	(availableHeight = 0 and: [self canAddColumn]) ifTrue: [
		currentColumn := currentColumn + 1.
		availableHeight := extent y].
	
	height := itemExtent y.
	numBuckets := self numBucketsForExtent: itemExtent.
	bucketWidth := columnWidth // numBuckets.
	
	shelf := RtBucketAllocatorShelf new
				x: currentColumn - 1 * columnWidth;
				y: extent y - availableHeight;
				height: height;
				bucketWidth: bucketWidth.
	
	"Initialize buckets for new shelf"
	previousBucket := nil.
	0 to: numBuckets - 1 do: [:index |
		previousBucket := RtBucketAllocatorBucket new
							next: previousBucket;
							x: index * bucketWidth + shelf x;
							freeSpace: bucketWidth;
							shelf: shelf].
	shelf firstBucket: previousBucket.
	shelves add: shelf.
	
	availableHeight := availableHeight - height.
	
	^ shelf
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 09:26'
}
RtBucketAllocator >> alignment [

	^ alignment
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 09:26'
}
RtBucketAllocator >> alignment: anObject [

	alignment := anObject
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/28/2021 14:40'
}
RtBucketAllocator >> allocate: requestedExtent [

	| alignedExtent selectedBucket allocation |
	alignedExtent := requestedExtent roundUpTo: alignment.
	(alignedExtent x > columnWidth or: [alignedExtent y > extent y]) ifTrue: [^ nil].
	
	selectedBucket := self findBucketOfExtent: alignedExtent.
	selectedBucket ifNil: [
		(self canAddShelfOfHeight: alignedExtent y)
			ifTrue: [selectedBucket := (self addShelf: alignedExtent) firstBucket]
			ifFalse: [selectedBucket := self coalesceShelves: alignedExtent]].
	
	selectedBucket ifNotNil: [
		allocation := selectedBucket allocate: alignedExtent x.
		allocatedSpace := allocatedSpace + allocation rectangle area.
		^ allocation].
	^ nil
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 6/28/2021 16:33'
}
RtBucketAllocator >> canAddColumn [

	^ currentColumn < numColumns
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 6/28/2021 14:06'
}
RtBucketAllocator >> canAddShelfOfHeight: shelfHeight [

	^ availableHeight >= shelfHeight or: [currentColumn < numColumns]
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/29/2021 08:49'
}
RtBucketAllocator >> clear [

	shelves := OrderedCollection new.
	availableHeight := extent y.
	currentColumn := 1.
	allocatedSpace := 0.
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/29/2021 10:28'
}
RtBucketAllocator >> coalesceShelves: itemExtent [

	^ nil
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 6/29/2021 09:30'
}
RtBucketAllocator >> drawOn: aCanvas [

	| allocatedColor unallocatedColor gridColor |
	allocatedColor := Color r: 70 g: 70 b: 180 range: 255.
	unallocatedColor := Color r: 50 g: 50 b: 50 range: 255.
	gridColor := Color black.
	aCanvas fillRectangle: (0@0 extent: extent) color: unallocatedColor.
	shelves do: [:shelf |
		| bucket |
		bucket := shelf firstBucket.
		[bucket ~~ nil] whileTrue: [
			aCanvas fillRectangle: bucket allocatedBounds color: allocatedColor.
			aCanvas frameRectangle: bucket bounds color: gridColor.
			bucket := bucket next].
		aCanvas frameRectangle: (shelf x @ shelf y extent: columnWidth @ shelf height) color: gridColor].
	1 to: numColumns - 1 do: [:index |
		| x |
		x := index * columnWidth.
		aCanvas line: x @ 0 to: x @ extent y color: gridColor]
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/28/2021 20:23'
}
RtBucketAllocator >> findBucketOfExtent: minExtent [

	| w h bestWaste canAddShelf selectedBucket |
	w := minExtent x.
	h := minExtent y.
	
	bestWaste := extent y.
	canAddShelf := self canAddShelfOfHeight: h.
	
	1 to: shelves size do: [:shelfIndex |
		| shelf |
		shelf := shelves at: shelfIndex.
		(shelf height >= h and: [shelf bucketWidth >= w]) ifTrue: [
			| yWaste |
			yWaste := shelf height - h.
			"only allow massive waste (2*h) if no more shelves can be added"
			(yWaste <= bestWaste and: [canAddShelf not or: [yWaste <= h]]) ifTrue: [
				selectedBucket := self findBucketOfWidth: w inShelf: shelf.
				selectedBucket ifNotNil: [
					(yWaste = 0 and: [selectedBucket freeSpace = w]) ifTrue: [
						^ selectedBucket "perfect match"].
					bestWaste := yWaste]]]].
	
	^ selectedBucket
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/28/2021 20:22'
}
RtBucketAllocator >> findBucketOfWidth: minWidth inShelf: aShelf [

	| bucket |
	bucket := aShelf firstBucket.
	[bucket ~~ nil] whileTrue: [
		bucket freeSpace >= minWidth ifTrue: [^ bucket].
		bucket := bucket next].
	^ nil
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 6/29/2021 09:24'
}
RtBucketAllocator >> imageForm [

	| fc |
	fc := FormCanvas extent: extent.
	self drawOn: fc.
	^ fc form
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/29/2021 10:39'
}
RtBucketAllocator >> initialize [

	self clear.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 6/28/2021 10:08'
}
RtBucketAllocator >> isEmpty [

	^ shelves isEmpty
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/28/2021 16:12'
}
RtBucketAllocator >> numBucketsForExtent: shelfExtent [

	| n |
	n := columnWidth // (shelfExtent x max: shelfExtent y).
	n <= 4 ifTrue: [^ 1].
	n <= 16 ifTrue: [^ 2].
	n <= 32 ifTrue: [^ 4].
	^ (n // 16 + 1) asLargerPowerOfTwo
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/28/2021 09:26'
}
RtBucketAllocator >> numColumns [

	^ numColumns
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/29/2021 08:24'
}
RtBucketAllocator >> numColumns: aNumber [

	numColumns := aNumber.
	columnWidth := extent x // aNumber.
]

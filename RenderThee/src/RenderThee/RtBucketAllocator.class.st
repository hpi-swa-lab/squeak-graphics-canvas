Class {
	#name : #RtBucketAllocator,
	#superclass : #RtAtlasAllocator,
	#instVars : [
		'shelves',
		'availableHeight',
		'currentColumn',
		'columnWidth',
		'numColumns',
		'allocatedSpace'
	],
	#category : #'RenderThee-Atlas'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/1/2022 17:19'
}
RtBucketAllocator class >> extent: anExtent [

	^ self
		extent: anExtent
		numColumns: 1
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/1/2022 17:18'
}
RtBucketAllocator class >> extent: anExtent numColumns: numColumns [

	^ self basicNew
		extent: anExtent;
		numColumns: numColumns;
		initialize;
		yourself
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/1/2022 16:58'
}
RtBucketAllocator >> addShelfOfHeight: shelfHeight [

	| numBuckets bucketWidth previousBucket shelf |
	(availableHeight ~= 0 and: [shelfHeight > availableHeight and: [self canAddColumn]]) ifTrue: [
		"We have room to add a shelf in a new column but current one doesn't have enough available space.
		First add a shelf to fill the current column's remaining height."
		self addShelfOfHeight: availableHeight].
	
	(availableHeight = 0 and: [self canAddColumn]) ifTrue: [
		currentColumn := currentColumn + 1.
		availableHeight := height].
	
	numBuckets := self numBucketsForWidth: columnWidth height: shelfHeight.
	bucketWidth := columnWidth // numBuckets.
	
	shelf := RtBucketAllocatorShelf new
		atlas: self;
		x: currentColumn - 1 * columnWidth;
		y: height - availableHeight;
		height: shelfHeight;
		bucketWidth: bucketWidth.
	
	"Initialize buckets for new shelf"
	previousBucket := nil.
	numBuckets - 1 to: 0 by: -1 do: [:index |
		previousBucket := RtBucketAllocatorBucket new
			next: previousBucket;
			x: index * bucketWidth + shelf x;
			freeWidth: bucketWidth;
			shelf: shelf].
	shelf firstBucket: previousBucket.
	shelves addLast: shelf.
	
	availableHeight := availableHeight - shelfHeight.
	
	^ shelf
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/1/2022 17:44'
}
RtBucketAllocator >> allocateWidth: requestedWidth height: requestedHeight [

	| selectedBucket |
	(requestedWidth > columnWidth or: [requestedHeight > height]) ifTrue: [^ nil].
	
	selectedBucket := self findBucketOfWidth: requestedWidth height: requestedHeight.
	selectedBucket ifNil: [
		(self canAddShelfOfHeight: requestedHeight) ifTrue: [
			selectedBucket := (self addShelfOfHeight: requestedHeight) firstBucket]].
	
	^ selectedBucket ifNotNil: [
		selectedBucket allocate: requestedWidth]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 15:17'
}
RtBucketAllocator >> allocatedSpace [

	^ allocatedSpace
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
	#'squeak_changestamp' : 'stlu 5/30/2022 17:50'
}
RtBucketAllocator >> clear [

	shelves := OrderedCollection new.
	availableHeight := height.
	currentColumn := 1.
	allocatedSpace := 0.
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 5/30/2022 14:07'
}
RtBucketAllocator >> coalesceShelves: itemExtent [

	"not yet implemented"
	^ nil
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/30/2022 17:51'
}
RtBucketAllocator >> drawOn: aCanvas [

	| allocatedColor unallocatedColor gridColor |
	allocatedColor := Color r: 70 g: 70 b: 180 range: 255.
	unallocatedColor := Color r: 50 g: 50 b: 50 range: 255.
	gridColor := Color black.
	aCanvas fillRectangle: (0@0 extent: self extent) color: unallocatedColor.
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
		aCanvas line: x @ 0 to: x @ height color: gridColor]
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/1/2022 17:32'
}
RtBucketAllocator >> findBucketOfWidth: minWidth height: minHeight [

	| bestWaste canAddShelf selectedBucket |
	bestWaste := height.
	canAddShelf := self canAddShelfOfHeight: minHeight.
	
	1 to: shelves size do: [:shelfIndex |
		| shelf |
		shelf := shelves at: shelfIndex.
		(shelf height >= minHeight and: [shelf bucketWidth >= minWidth]) ifTrue: [
			| yWaste |
			yWaste := shelf height - minHeight.
			"only allow massive waste (2*h) if no more shelves can be added"
			(yWaste <= bestWaste and: [canAddShelf not or: [yWaste <= minHeight]]) ifTrue: [
				selectedBucket := self findBucketOfWidth: minWidth inShelf: shelf.
				selectedBucket ifNotNil: [
					yWaste = 0 ifTrue: [^ selectedBucket].
					bestWaste := yWaste]]]].
	
	^ selectedBucket
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 6/1/2022 16:56'
}
RtBucketAllocator >> findBucketOfWidth: minWidth inShelf: aShelf [

	| bucket |
	bucket := aShelf firstBucket.
	[nil ~~ bucket] whileTrue: [
		bucket freeWidth >= minWidth ifTrue: [^ bucket].
		bucket := bucket next].
	^ nil
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/30/2022 17:51'
}
RtBucketAllocator >> imageForm [

	| fc |
	fc := FormCanvas extent: self extent.
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
	#'squeak_changestamp' : 'stlu 5/30/2022 17:40'
}
RtBucketAllocator >> numBucketsForWidth: shelfWidth height: shelfHeight [

	| n |
	n := columnWidth // (shelfWidth min: shelfHeight).
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
	#'squeak_changestamp' : 'stlu 5/30/2022 17:51'
}
RtBucketAllocator >> numColumns: aNumber [

	numColumns := aNumber.
	columnWidth := width // aNumber.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 17:07'
}
RtBucketAllocator >> spaceAllocated: anInteger [

	allocatedSpace := allocatedSpace + anInteger.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/1/2022 17:10'
}
RtBucketAllocator >> spaceDeallocated: anInteger [

	allocatedSpace := allocatedSpace - anInteger.
]

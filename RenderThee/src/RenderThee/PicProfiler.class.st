Class {
	#name : #PicProfiler,
	#superclass : #PicVisitor,
	#instVars : [
		'transform',
		'clipRect',
		'morph',
		'isScopeVisible',
		'typeCounts',
		'invisibleTypeCounts',
		'perMorphStats',
		'morphStats',
		'pixelWriteCountsByType'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #profiling,
	#'squeak_changestamp' : 'stlu 1/27/2022 13:59'
}
PicProfiler >> countInvisibleType: aSymbol [

	invisibleTypeCounts add: aSymbol.
	morphStats ifNotNil: [
		(morphStats at: #invisibleTypeCounts) add: aSymbol].
]

{
	#category : #profiling,
	#'squeak_changestamp' : 'stlu 1/27/2022 15:45'
}
PicProfiler >> countPixelsWritten: count ofType: aSymbol [

	| oldValue morphPixelCounts |
	oldValue := pixelWriteCountsByType at: aSymbol ifAbsentPut: [0].
	pixelWriteCountsByType at: aSymbol put: oldValue + count.
	
	morphStats ifNotNil: [
		morphPixelCounts := morphStats at: #pixelCounts.
		oldValue := morphPixelCounts at: aSymbol ifAbsentPut: [0].
		morphPixelCounts at: aSymbol put: oldValue + count].
]

{
	#category : #profiling,
	#'squeak_changestamp' : 'stlu 1/27/2022 13:58'
}
PicProfiler >> countType: aSymbol [

	typeCounts add: aSymbol.
	morphStats ifNotNil: [
		(morphStats at: #typeCounts) add: aSymbol].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 1/27/2022 09:37'
}
PicProfiler >> initialize [

	super initialize.
	self reset.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/27/2022 14:14'
}
PicProfiler >> invisiblePrimitiveCountsByType [

	^ invisibleTypeCounts valuesAndCounts
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/27/2022 15:58'
}
PicProfiler >> pixelWriteCount [

	^ pixelWriteCountsByType sum
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/27/2022 16:00'
}
PicProfiler >> pixelWriteCountsByMorph [

	^ Array streamContents: [:stream |
		perMorphStats do: [:stats |
			stream nextPut: ((stats at: #pixelCounts)
				ifEmpty: [0]
				ifNotEmpty: [:counts | counts sum])]]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/27/2022 15:44'
}
PicProfiler >> pixelWriteCountsByType [

	^ pixelWriteCountsByType
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/27/2022 14:13'
}
PicProfiler >> primitiveCountsByType [

	^ typeCounts valuesAndCounts
]

{
	#category : #profiling,
	#'squeak_changestamp' : 'stlu 2/2/2022 11:37'
}
PicProfiler >> processBounds: aRectangle ofType: aSymbol [

	| clippedBounds |
	clippedBounds := aRectangle intersect: clipRect.
	(isScopeVisible and: [clippedBounds hasPositiveExtent])
		ifTrue: [self countPixelsWritten: clippedBounds area ofType: aSymbol]
		ifFalse: [self countInvisibleType: aSymbol].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 1/27/2022 15:44'
}
PicProfiler >> reset [

	invisibleTypeCounts := Bag new.
	typeCounts := Bag new.
	pixelWriteCountsByType := Dictionary new.
	perMorphStats := Dictionary new.
	morphStats := nil.
	
	transform := Matrix2x3 identity.
	clipRect := Rectangle infinite.
	isScopeVisible := true.
	morph := nil.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/27/2022 13:48'
}
PicProfiler >> statsForMorph: aMorph [

	^ perMorphStats at: aMorph ifAbsentPut: [
		{
			#pixelCounts -> Dictionary new.
			#typeCounts -> Bag new.
			#invisibleTypeCounts -> Bag new
		} as: Dictionary]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 2/2/2022 14:07'
}
PicProfiler >> visiblePrimitiveCount [

	^ self visiblePrimitiveCountsByType
		ifEmpty: [0]
		ifNotEmpty: [:dict | dict sum]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/27/2022 14:15'
}
PicProfiler >> visiblePrimitiveCountsByType [

	^ (typeCounts copy removeAll: invisibleTypeCounts; yourself) valuesAndCounts
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 1/27/2022 10:18'
}
PicProfiler >> visitClip: anObject [

	| previousClipRect previousScopeVisibility |
	self countType: #clip.
	
	previousClipRect := clipRect.
	clipRect := clipRect intersect: anObject clipRect.
	previousScopeVisibility := isScopeVisible.
	isScopeVisible := isScopeVisible and: [clipRect hasPositiveExtent].
	
	super visitClip: anObject.
	
	clipRect := previousClipRect.
	isScopeVisible := previousScopeVisibility.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 1/27/2022 10:51'
}
PicProfiler >> visitImage: anObject [

	self countType: #image.
	self processBounds: anObject bounds ofType: #image.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 1/27/2022 10:56'
}
PicProfiler >> visitLine: anObject [

	self countType: #line.
	self processBounds: anObject estimatedBounds ofType: #line.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 2/2/2022 11:37'
}
PicProfiler >> visitMorph: anObject [

	| previousMorph previousMorphStats |
	previousMorph := morph.
	previousMorphStats := morphStats.
	morphStats := self statsForMorph: anObject.
	
	super visitMorph: anObject.
	
	morph := previousMorph.
	morphStats := previousMorphStats.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 1/27/2022 10:49'
}
PicProfiler >> visitOval: anObject [

	self countType: #oval.
	self processBounds: anObject bounds ofType: #oval.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 1/27/2022 10:58'
}
PicProfiler >> visitParagraph: anObject [

	self countType: #paragraph.
	self processBounds: anObject bounds ofType: #paragraph.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 1/27/2022 10:52'
}
PicProfiler >> visitPolygon: anObject [

	self countType: #polygon.
	self processBounds: anObject bounds ofType: #polygon.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 1/27/2022 10:51'
}
PicProfiler >> visitRectangle: anObject [

	self countType: #rectangle.
	self processBounds: anObject bounds ofType: #rectangle.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 1/27/2022 10:51'
}
PicProfiler >> visitRoundedRectangle: anObject [

	self countType: #roundedRectangle.
	self processBounds: anObject bounds ofType: #roundedRectangle.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 1/27/2022 10:55'
}
PicProfiler >> visitString: anObject [

	self countType: #string.
	self processBounds: anObject bounds ofType: #string.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 1/27/2022 10:16'
}
PicProfiler >> visitTransform: anObject [

	| previousTransform previousClipRect previousScopeVisibility |
	self countType: #transform.
	
	previousClipRect := clipRect.
	clipRect := (anObject matrix globalBoundsToLocal: clipRect) expanded.
	previousScopeVisibility := isScopeVisible.
	isScopeVisible := isScopeVisible and: [clipRect hasPositiveExtent].
	previousTransform := transform.
	transform := transform * anObject matrix.
	
	super visitTransform: anObject.
	
	transform := previousTransform.
	clipRect := previousClipRect.
	isScopeVisible := previousScopeVisibility.
]

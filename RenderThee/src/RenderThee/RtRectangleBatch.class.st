Class {
	#name : #RtRectangleBatch,
	#superclass : #RtBatch,
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 17:06'
}
RtRectangleBatch >> program [

	^ renderer rectangleProgram
]

{
	#category : #instances,
	#'squeak_changestamp' : 'stlu 8/23/2021 16:59'
}
RtRectangleBatch >> rectangleLeft: left right: right top: top bottom: bottom radius: radius fillColor: aColor z: zIndex [

	| offset rectangleIndex fillColorIndex |
	rectangleIndex := renderer transientStoreF
		add: left asFloat
		add: top asFloat
		add: right asFloat
		add: bottom asFloat
		add: radius asFloat
		add: zIndex asFloat.
	
	fillColorIndex := renderer indexForColor: aColor.
	
	offset := instanceIndex * 4.
	instanceData
		at: offset + 1 put: rectangleIndex;
		at: offset + 2 put: renderer clipRectIndex;
		at: offset + 3 put: renderer transformIndex;
		at: offset + 4 put: fillColorIndex.
	instanceIndex := instanceIndex + 1.
]

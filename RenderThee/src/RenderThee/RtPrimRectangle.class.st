Class {
	#name : #RtPrimRectangle,
	#superclass : #RtGPUPrimitive,
	#instVars : [
		'transientDataF',
		'color'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #batching,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:34'
}
RtPrimRectangle >> addToBatches: batches [

	(self requiresBlending
		ifTrue: [batches translucentRectangleBatch]
		ifFalse: [batches opaqueRectangleBatch]) addPrimitive: self.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 9/28/2021 16:42'
}
RtPrimRectangle >> left: left right: right top: top bottom: bottom radius: radius color: aColor [

	(transientDataF := ExternalType float allocate: 6)
		startingAt: 1
		put: left asFloat
		put: top asFloat
		put: right asFloat
		put: bottom asFloat
		put: radius asFloat.
	color := aColor.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/28/2021 14:44'
}
RtPrimRectangle >> requiresBlending [

	^ color isTranslucent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 17:28'
}
RtPrimRectangle >> transform: aTransform index: transformIdx clip: aRectangle index: clipRectIdx z: zIdx [

	transformIndex := transformIdx.
	clipRectIndex := clipRectIdx.
	transientDataF at: 6 put: zIdx.
	
	^ true
]

{
	#category : #batching,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:29'
}
RtPrimRectangle >> writeToBatch: aBatch [

	| colorIndex storeIndex |
	colorIndex := aBatch renderer indexForColor: color.
	storeIndex := aBatch transientStoreF addAllFrom: transientDataF.
	aBatch
		addInstance: storeIndex
		with: clipRectIndex
		with: transformIndex
		with: colorIndex.
]

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
	#'squeak_changestamp' : 'stlu 9/28/2021 13:57'
}
RtPrimRectangle >> addToBatch: aBatch [

	| colorIndex storeIndex |
	colorIndex := aBatch renderer indexForColor: color.
	storeIndex := aBatch transientStoreF addAllFrom: transientDataF.
	aBatch
		addInstance: storeIndex
		with: clipRectIndex
		with: transformIndex
		with: colorIndex.
]

{
	#category : #batching,
	#'squeak_changestamp' : 'stlu 9/28/2021 15:36'
}
RtPrimRectangle >> chooseGroup: groups [

	(self requiresBlending
		ifTrue: [groups alphaRectangleBatch]
		ifFalse: [groups opaqueRectangleBatch]) addPrimitive: self.
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

Class {
	#name : #RtPrimImage,
	#superclass : #RtPrimitive,
	#instVars : [
		'transientDataF',
		'color',
		'form'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #batching,
	#'squeak_changestamp' : 'stlu 1/4/2022 16:31'
}
RtPrimImage >> addToBatches: batches [

	batches imageBatch addPrimitive: self.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 1/4/2022 17:00'
}
RtPrimImage >> left: left right: right top: top bottom: bottom form: aForm [

	(transientDataF := ExternalType float allocate: 4)
		startingAt: 1
		put: left asFloat
		put: top asFloat
		put: right asFloat
		put: bottom asFloat.
	form := aForm.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/4/2022 17:01'
}
RtPrimImage >> transform: aTransform index: transformIdx clip: aRectangle index: clipRectIdx z: zIdx [

	transformIndex := transformIdx.
	clipRectIndex := clipRectIdx.
	zIndex := zIdx.
	
	^ true
]

{
	#category : #batching,
	#'squeak_changestamp' : 'stlu 1/4/2022 17:03'
}
RtPrimImage >> writeToBatch: aBatch [

	| atlasAlloc storeIndex atlasRect |
	form extent > (16@16) ifTrue: [^ self].
	atlasAlloc := aBatch renderer allocationForForm: form.
	atlasAlloc ifNil: [^ self].
	atlasRect := atlasAlloc rectangle origin extent: form extent.
	storeIndex := aBatch transientStoreF addAllFrom: transientDataF.
	aBatch transientStoreF
		add: atlasRect left asFloat
		add: atlasRect top asFloat
		add: atlasRect right asFloat
		add: atlasRect bottom asFloat.
	aBatch
		addInstance: storeIndex
		with: clipRectIndex
		with: transformIndex
		with: zIndex.
]

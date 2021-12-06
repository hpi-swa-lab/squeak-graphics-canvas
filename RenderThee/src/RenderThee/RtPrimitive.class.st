Class {
	#name : #RtPrimitive,
	#superclass : #Object,
	#instVars : [
		'transformIndex',
		'clipRectIndex',
		'zIndex'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #batching,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:34'
}
RtPrimitive >> addToBatches: batches [

	self subclassResponsibility.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 13:36'
}
RtPrimitive >> clipRectIndex [

	^ clipRectIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 13:36'
}
RtPrimitive >> clipRectIndex: anObject [

	clipRectIndex := anObject.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/28/2021 14:45'
}
RtPrimitive >> requiresBlending [

	^ true
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 14:17'
}
RtPrimitive >> transform: aTransform index: transformIdx clip: aRectangle index: clipRectIdx z: zIdx [

	transformIndex := transformIdx.
	clipRectIndex := clipRectIdx.
	zIndex := zIdx.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 13:36'
}
RtPrimitive >> transformIndex [

	^ transformIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 13:36'
}
RtPrimitive >> transformIndex: anObject [

	transformIndex := anObject.
]

{
	#category : #batching,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:29'
}
RtPrimitive >> writeToBatch: aBatch [

	self subclassResponsibility.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 13:36'
}
RtPrimitive >> zIndex [

	^ zIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 13:36'
}
RtPrimitive >> zIndex: anObject [

	zIndex := anObject.
]

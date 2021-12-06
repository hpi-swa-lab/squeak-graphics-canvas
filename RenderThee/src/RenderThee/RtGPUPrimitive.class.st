Class {
	#name : #RtGPUPrimitive,
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
RtGPUPrimitive >> addToBatches: batches [

	self subclassResponsibility.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 13:36'
}
RtGPUPrimitive >> clipRectIndex [

	^ clipRectIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 13:36'
}
RtGPUPrimitive >> clipRectIndex: anObject [

	clipRectIndex := anObject.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/28/2021 14:45'
}
RtGPUPrimitive >> requiresBlending [

	^ true
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 14:17'
}
RtGPUPrimitive >> transform: aTransform index: transformIdx clip: aRectangle index: clipRectIdx z: zIdx [

	transformIndex := transformIdx.
	clipRectIndex := clipRectIdx.
	zIndex := zIdx.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 13:36'
}
RtGPUPrimitive >> transformIndex [

	^ transformIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 13:36'
}
RtGPUPrimitive >> transformIndex: anObject [

	transformIndex := anObject.
]

{
	#category : #batching,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:29'
}
RtGPUPrimitive >> writeToBatch: aBatch [

	self subclassResponsibility.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 13:36'
}
RtGPUPrimitive >> zIndex [

	^ zIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 13:36'
}
RtGPUPrimitive >> zIndex: anObject [

	zIndex := anObject.
]
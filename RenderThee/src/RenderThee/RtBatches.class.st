Class {
	#name : #RtBatches,
	#superclass : #Object,
	#instVars : [
		'translucentRectangleBatch',
		'opaqueRectangleBatch',
		'textBatch'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #batching,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:18'
}
RtBatches >> batchPrimitives [

	self do: [:batch | batch batchPrimitives].
]

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:17'
}
RtBatches >> do: aBlock [

	aBlock value: opaqueRectangleBatch.
	aBlock value: translucentRectangleBatch.
	aBlock value: textBatch.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:46'
}
RtBatches >> initialize [

	opaqueRectangleBatch := RtRectangleBatch new.
	opaqueRectangleBatch isAlpha: false.
	
	translucentRectangleBatch := RtRectangleBatch new.
	translucentRectangleBatch isAlpha: true.
	
	textBatch := RtTextBatch new.
	textBatch isAlpha: true.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:15'
}
RtBatches >> opaqueRectangleBatch [

	^ opaqueRectangleBatch
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:15'
}
RtBatches >> opaqueRectangleBatch: anObject [

	opaqueRectangleBatch := anObject.
]

{
	#category : #batching,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:19'
}
RtBatches >> reset [

	self do: [:batch | batch reset].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:20'
}
RtBatches >> setRenderer: aRenderer [

	self do: [:batch | batch renderer: aRenderer].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:15'
}
RtBatches >> textBatch [

	^ textBatch
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:15'
}
RtBatches >> textBatch: anObject [

	textBatch := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:15'
}
RtBatches >> translucentRectangleBatch [

	^ translucentRectangleBatch
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:15'
}
RtBatches >> translucentRectangleBatch: anObject [

	translucentRectangleBatch := anObject.
]

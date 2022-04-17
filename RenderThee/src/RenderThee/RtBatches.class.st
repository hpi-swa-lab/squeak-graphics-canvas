Class {
	#name : #RtBatches,
	#superclass : #Object,
	#instVars : [
		'translucentRectangleBatch',
		'opaqueRectangleBatch',
		'textBatch',
		'imageBatch'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #enumerating,
	#'squeak_changestamp' : 'stlu 1/4/2022 14:40'
}
RtBatches >> do: aBlock [

	aBlock value: opaqueRectangleBatch.
	aBlock value: translucentRectangleBatch.
	aBlock value: imageBatch.
	aBlock value: textBatch.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/4/2022 14:40'
}
RtBatches >> imageBatch [

	^ imageBatch
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/4/2022 14:40'
}
RtBatches >> imageBatch: anObject [

	imageBatch := anObject.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 1/4/2022 14:48'
}
RtBatches >> initialize [

	opaqueRectangleBatch := RtRectangleBatch new.
	opaqueRectangleBatch isAlpha: false.
	
	translucentRectangleBatch := RtRectangleBatch new.
	translucentRectangleBatch isAlpha: true.
	
	imageBatch := RtImageBatch new.
	imageBatch isAlpha: true.
	
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

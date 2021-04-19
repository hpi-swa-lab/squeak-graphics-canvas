Class {
	#name : #RtCompositingCanvas,
	#superclass : #RtWrapperCanvas,
	#instVars : [
		'readsCaches',
		'writesCaches'
	],
	#category : #'RenderThee-LayerTree',
	#'squeak_changestamp' : ''
}

{
	#category : #compositing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCompositingCanvas >> cacheLayer: aLayer [

	wrappedCanvas cacheLayer: aLayer
]

{
	#category : #compositing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCompositingCanvas >> compositeLayer: aLayer [

	aLayer drawOn: self
]

{
	#category : #compositing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCompositingCanvas >> drawLayer: aLayer [

	(writesCaches and: [aLayer needsCaching and: [aLayer isCached not]])
		ifTrue: [self cacheLayer: aLayer].

	(readsCaches and: [aLayer isCached])
		ifTrue: [
			wrappedCanvas paintImageStore: aLayer cache.
			aLayer class == RtGroupLayer ifTrue: [
				self frameRectangle: (0@0 extent: aLayer extent) color: Color green]]
		ifFalse: [
			aLayer incrementDrawCounter.
			aLayer drawOn: self.
			aLayer class == RtGroupLayer ifTrue: [
				self frameRectangle: (0@0 extent: aLayer extent) color: Color red]]
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCompositingCanvas >> initialize [

	super initialize.
	readsCaches := true.
	writesCaches := true
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCompositingCanvas >> readsCaches [

	^ readsCaches
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCompositingCanvas >> readsCaches: anObject [

	readsCaches := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCompositingCanvas >> writesCaches [

	^ writesCaches
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCompositingCanvas >> writesCaches: anObject [

	writesCaches := anObject
]

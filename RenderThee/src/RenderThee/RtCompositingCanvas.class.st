Class {
	#name : #RtCompositingCanvas,
	#superclass : #RtWrapperCanvas,
	#instVars : [
		'readsCaches',
		'writesCaches'
	],
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #compositing,
	#timestamp : ''
}
RtCompositingCanvas >> cacheLayer: aLayer [

	wrappedCanvas cacheLayer: aLayer
]

{
	#category : #compositing,
	#timestamp : ''
}
RtCompositingCanvas >> compositeLayer: aLayer [

	aLayer drawOn: self
]

{
	#category : #compositing,
	#timestamp : ''
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
	#timestamp : ''
}
RtCompositingCanvas >> initialize [

	super initialize.
	readsCaches := true.
	writesCaches := true
]

{
	#category : #accessing,
	#timestamp : ''
}
RtCompositingCanvas >> readsCaches [

	^ readsCaches
]

{
	#category : #accessing,
	#timestamp : ''
}
RtCompositingCanvas >> readsCaches: anObject [

	readsCaches := anObject
]

{
	#category : #accessing,
	#timestamp : ''
}
RtCompositingCanvas >> writesCaches [

	^ writesCaches
]

{
	#category : #accessing,
	#timestamp : ''
}
RtCompositingCanvas >> writesCaches: anObject [

	writesCaches := anObject
]

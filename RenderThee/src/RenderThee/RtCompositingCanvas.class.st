Class {
	#name : #RtCompositingCanvas,
	#superclass : #RtWrapperCanvas,
	#instVars : [
		'readsCaches',
		'writesCaches'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #compositing }
RtCompositingCanvas >> cacheLayer: aLayer [

	wrappedCanvas cacheLayer: aLayer
]

{ #category : #compositing }
RtCompositingCanvas >> compositeLayer: aLayer [

	aLayer drawOn: self
]

{ #category : #compositing }
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

{ #category : #initialization }
RtCompositingCanvas >> initialize [

	super initialize.
	readsCaches := true.
	writesCaches := true
]

{ #category : #accessing }
RtCompositingCanvas >> readsCaches [

	^ readsCaches
]

{ #category : #accessing }
RtCompositingCanvas >> readsCaches: anObject [

	readsCaches := anObject
]

{ #category : #accessing }
RtCompositingCanvas >> writesCaches [

	^ writesCaches
]

{ #category : #accessing }
RtCompositingCanvas >> writesCaches: anObject [

	writesCaches := anObject
]

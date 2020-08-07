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
RtCompositingCanvas >> compositeLayer: aLayer [

	aLayer drawOn: self
]

{ #category : #compositing }
RtCompositingCanvas >> drawLayer: aLayer [

	(writesCaches and: [aLayer needsCaching and: [aLayer isCached not]])
		ifTrue: [self updateLayerCache: aLayer].

	(readsCaches and: [aLayer isCached])
		ifTrue: [
			wrappedCanvas
				paintImageStore: aLayer cache
				sourceRect: aLayer cache boundingBox]
		ifFalse: [
			aLayer incrementDrawCounter.
			aLayer drawOn: self]
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

{ #category : #compositing }
RtCompositingCanvas >> updateLayerCache: aLayer [

	wrappedCanvas updateLayerCache: aLayer
]

{ #category : #accessing }
RtCompositingCanvas >> writesCaches [

	^ writesCaches
]

{ #category : #accessing }
RtCompositingCanvas >> writesCaches: anObject [

	writesCaches := anObject
]

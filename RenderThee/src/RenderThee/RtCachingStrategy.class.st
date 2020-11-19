Class {
	#name : #RtCachingStrategy,
	#superclass : #Object,
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #rules }
RtCachingStrategy >> shouldCacheDrawLayer: aLayer [

	^ self subclassResponsibility
]

{ #category : #rules }
RtCachingStrategy >> shouldCacheGroupLayer: aLayer [

	^ self subclassResponsibility
]

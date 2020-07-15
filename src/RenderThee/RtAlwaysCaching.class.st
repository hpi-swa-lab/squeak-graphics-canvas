Class {
	#name : #RtAlwaysCaching,
	#superclass : #RtCachingStrategy,
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'as yet unclassified' }
RtAlwaysCaching >> shouldCacheDrawLayer: aLayer [

	^ true
]

{ #category : #'as yet unclassified' }
RtAlwaysCaching >> shouldCacheGroupLayer: aLayer [

	^ true
]

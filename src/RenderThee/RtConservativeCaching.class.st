Class {
	#name : #RtConservativeCaching,
	#superclass : #RtCachingStrategy,
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #rules }
RtConservativeCaching >> shouldCacheDrawLayer: aLayer [

	^ true
]

{ #category : #rules }
RtConservativeCaching >> shouldCacheGroupLayer: aLayer [

	^ aLayer drawsSinceInvalidation >= 100
]

Class {
	#name : #RtNeverCaching,
	#superclass : #RtCachingStrategy,
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'as yet unclassified' }
RtNeverCaching >> shouldCacheDrawLayer: aLayer [

	^ false
]

{ #category : #'as yet unclassified' }
RtNeverCaching >> shouldCacheGroupLayer: aLayer [

	^ false
]

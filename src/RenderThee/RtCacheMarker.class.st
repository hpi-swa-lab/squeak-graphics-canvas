Class {
	#name : #RtCacheMarker,
	#superclass : #RtLayerVisitor,
	#instVars : [
		'cachingStrategy'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #accessing }
RtCacheMarker >> cachingStrategy [
	^ cachingStrategy
]

{ #category : #accessing }
RtCacheMarker >> cachingStrategy: anObject [
	cachingStrategy := anObject
]

{ #category : #testing }
RtCacheMarker >> shouldCacheDrawLayer: aLayer [

	^ cachingStrategy shouldCacheDrawLayer: aLayer
]

{ #category : #testing }
RtCacheMarker >> shouldCacheGroupLayer: aLayer [

	^ cachingStrategy shouldCacheGroupLayer: aLayer
]

{ #category : #visiting }
RtCacheMarker >> visitDrawLayer: aLayer [

	aLayer needsCaching: (self shouldCacheDrawLayer: aLayer).
	super visitDrawLayer: aLayer
]

{ #category : #visiting }
RtCacheMarker >> visitGroupLayer: aLayer [

	aLayer needsCaching: (self shouldCacheGroupLayer: aLayer).
	super visitGroupLayer: aLayer
]

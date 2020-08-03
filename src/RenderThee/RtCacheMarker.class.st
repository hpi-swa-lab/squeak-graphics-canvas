Class {
	#name : #RtCacheMarker,
	#superclass : #RtLayerVisitor,
	#instVars : [
		'cachingStrategy',
		'canvasClass'
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

{ #category : #accessing }
RtCacheMarker >> canvasClass [
	^ canvasClass
]

{ #category : #accessing }
RtCacheMarker >> canvasClass: anObject [
	canvasClass := anObject
]

{ #category : #visiting }
RtCacheMarker >> visitDrawLayer: aLayer [

	(cachingStrategy shouldCacheDrawLayer: aLayer) ifTrue: [
		aLayer cachingCanvasClass: canvasClass].
	super visitDrawLayer: aLayer
]

{ #category : #visiting }
RtCacheMarker >> visitGroupLayer: aLayer [

	(cachingStrategy shouldCacheGroupLayer: aLayer) ifTrue: [
		aLayer cachingCanvasClass: canvasClass].
	super visitGroupLayer: aLayer
]

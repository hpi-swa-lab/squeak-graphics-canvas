Class {
	#name : #RtCacheDecider,
	#superclass : #RtLayerVisitor,
	#instVars : [
		'cachingStrategy',
		'canvasClass'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #accessing }
RtCacheDecider >> cachingStrategy [
	^ cachingStrategy
]

{ #category : #accessing }
RtCacheDecider >> cachingStrategy: anObject [
	cachingStrategy := anObject
]

{ #category : #accessing }
RtCacheDecider >> canvasClass [
	^ canvasClass
]

{ #category : #accessing }
RtCacheDecider >> canvasClass: anObject [
	canvasClass := anObject
]

{ #category : #visiting }
RtCacheDecider >> visitDrawLayer: aLayer [

	(cachingStrategy shouldCacheDrawLayer: aLayer) ifTrue: [
		aLayer cachingCanvasClass: canvasClass].
	super visitDrawLayer: aLayer
]

{ #category : #visiting }
RtCacheDecider >> visitGroupLayer: aLayer [

	(cachingStrategy shouldCacheGroupLayer: aLayer) ifTrue: [
		aLayer cachingCanvasClass: canvasClass].
	super visitGroupLayer: aLayer
]

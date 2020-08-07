Class {
	#name : #RtCacheAfterUnchangedDraws,
	#superclass : #RtCachingStrategy,
	#instVars : [
		'threshold'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'instance creation' }
RtCacheAfterUnchangedDraws class >> threshold: numUnchangedDraws [

	^ self new
		threshold: numUnchangedDraws;
		yourself
]

{ #category : #rules }
RtCacheAfterUnchangedDraws >> shouldCacheDrawLayer: aLayer [

	"^ aLayer drawsSinceInvalidation >= threshold"
	^ true
]

{ #category : #rules }
RtCacheAfterUnchangedDraws >> shouldCacheGroupLayer: aLayer [

	^ aLayer drawsSinceInvalidation >= threshold
]

{ #category : #accessing }
RtCacheAfterUnchangedDraws >> threshold [
	^ threshold
]

{ #category : #accessing }
RtCacheAfterUnchangedDraws >> threshold: anObject [
	threshold := anObject
]

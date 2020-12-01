Class {
	#name : #RtCacheAfterUnchangedDraws,
	#superclass : #RtCachingStrategy,
	#instVars : [
		'threshold'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
RtCacheAfterUnchangedDraws class >> threshold: numUnchangedDraws [

	^ self new
		threshold: numUnchangedDraws;
		yourself
]

{
	#category : #rules,
	#timestamp : ''
}
RtCacheAfterUnchangedDraws >> shouldCacheDrawLayer: aLayer [

	^ aLayer drawsSinceInvalidation >= threshold
]

{
	#category : #rules,
	#timestamp : ''
}
RtCacheAfterUnchangedDraws >> shouldCacheGroupLayer: aLayer [

	^ aLayer drawsSinceInvalidation >= threshold
]

{
	#category : #accessing,
	#timestamp : ''
}
RtCacheAfterUnchangedDraws >> threshold [
	^ threshold
]

{
	#category : #accessing,
	#timestamp : ''
}
RtCacheAfterUnchangedDraws >> threshold: anObject [
	threshold := anObject
]

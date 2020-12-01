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
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtCacheAfterUnchangedDraws class >> threshold: numUnchangedDraws [

	^ self new
		threshold: numUnchangedDraws;
		yourself
]

{
	#category : #rules,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtCacheAfterUnchangedDraws >> shouldCacheDrawLayer: aLayer [

	^ aLayer drawsSinceInvalidation >= threshold
]

{
	#category : #rules,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtCacheAfterUnchangedDraws >> shouldCacheGroupLayer: aLayer [

	^ aLayer drawsSinceInvalidation >= threshold
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtCacheAfterUnchangedDraws >> threshold [
	^ threshold
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtCacheAfterUnchangedDraws >> threshold: anObject [
	threshold := anObject
]

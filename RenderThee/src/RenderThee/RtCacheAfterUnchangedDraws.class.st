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
	#'squeak_changestamp' : ''
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCacheAfterUnchangedDraws class >> threshold: numUnchangedDraws [

	^ self new
		threshold: numUnchangedDraws;
		yourself
]

{
	#category : #rules,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCacheAfterUnchangedDraws >> shouldCacheDrawLayer: aLayer [

	^ aLayer drawsSinceInvalidation >= threshold
]

{
	#category : #rules,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCacheAfterUnchangedDraws >> shouldCacheGroupLayer: aLayer [

	^ aLayer drawsSinceInvalidation >= threshold
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCacheAfterUnchangedDraws >> threshold [
	^ threshold
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCacheAfterUnchangedDraws >> threshold: anObject [
	threshold := anObject
]

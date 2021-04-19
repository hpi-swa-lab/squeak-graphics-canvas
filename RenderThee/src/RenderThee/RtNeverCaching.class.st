Class {
	#name : #RtNeverCaching,
	#superclass : #RtCachingStrategy,
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree',
	#'squeak_changestamp' : ''
}

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtNeverCaching >> shouldCacheDrawLayer: aLayer [

	^ false
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtNeverCaching >> shouldCacheGroupLayer: aLayer [

	^ false
]

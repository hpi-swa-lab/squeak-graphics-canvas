Class {
	#name : #RtCachingStrategy,
	#superclass : #Object,
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree',
	#'squeak_changestamp' : ''
}

{
	#category : #rules,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCachingStrategy >> shouldCacheDrawLayer: aLayer [

	^ self subclassResponsibility
]

{
	#category : #rules,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCachingStrategy >> shouldCacheGroupLayer: aLayer [

	^ self subclassResponsibility
]

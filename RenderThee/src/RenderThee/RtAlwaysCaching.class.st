Class {
	#name : #RtAlwaysCaching,
	#superclass : #RtCachingStrategy,
	#category : #'RenderThee-LayerTree'
}

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtAlwaysCaching >> shouldCacheDrawLayer: aLayer [

	^ true
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtAlwaysCaching >> shouldCacheGroupLayer: aLayer [

	^ true
]

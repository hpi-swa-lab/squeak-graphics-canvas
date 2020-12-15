Class {
	#name : #RtAlwaysCaching,
	#superclass : #RtCachingStrategy,
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #'as yet unclassified',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtAlwaysCaching >> shouldCacheDrawLayer: aLayer [

	^ true
]

{
	#category : #'as yet unclassified',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtAlwaysCaching >> shouldCacheGroupLayer: aLayer [

	^ true
]

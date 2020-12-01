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
	#timestamp : ''
}
RtAlwaysCaching >> shouldCacheDrawLayer: aLayer [

	^ true
]

{
	#category : #'as yet unclassified',
	#timestamp : ''
}
RtAlwaysCaching >> shouldCacheGroupLayer: aLayer [

	^ true
]

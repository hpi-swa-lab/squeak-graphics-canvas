Class {
	#name : #RtNeverCaching,
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
RtNeverCaching >> shouldCacheDrawLayer: aLayer [

	^ false
]

{
	#category : #'as yet unclassified',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtNeverCaching >> shouldCacheGroupLayer: aLayer [

	^ false
]

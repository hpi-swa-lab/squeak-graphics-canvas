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
	#timestamp : ''
}
RtNeverCaching >> shouldCacheDrawLayer: aLayer [

	^ false
]

{
	#category : #'as yet unclassified',
	#timestamp : ''
}
RtNeverCaching >> shouldCacheGroupLayer: aLayer [

	^ false
]

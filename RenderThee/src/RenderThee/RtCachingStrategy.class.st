Class {
	#name : #RtCachingStrategy,
	#superclass : #Object,
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #rules,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtCachingStrategy >> shouldCacheDrawLayer: aLayer [

	^ self subclassResponsibility
]

{
	#category : #rules,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtCachingStrategy >> shouldCacheGroupLayer: aLayer [

	^ self subclassResponsibility
]

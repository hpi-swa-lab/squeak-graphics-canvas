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
	#timestamp : ''
}
RtCachingStrategy >> shouldCacheDrawLayer: aLayer [

	^ self subclassResponsibility
]

{
	#category : #rules,
	#timestamp : ''
}
RtCachingStrategy >> shouldCacheGroupLayer: aLayer [

	^ self subclassResponsibility
]

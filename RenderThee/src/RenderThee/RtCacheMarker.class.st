Class {
	#name : #RtCacheMarker,
	#superclass : #RtLayerVisitor,
	#instVars : [
		'cachingStrategy'
	],
	#category : #'RenderThee-LayerTree'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCacheMarker >> cachingStrategy [
	^ cachingStrategy
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCacheMarker >> cachingStrategy: anObject [
	cachingStrategy := anObject
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCacheMarker >> shouldCacheDrawLayer: aLayer [

	^ cachingStrategy shouldCacheDrawLayer: aLayer
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCacheMarker >> shouldCacheGroupLayer: aLayer [

	^ cachingStrategy shouldCacheGroupLayer: aLayer
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCacheMarker >> visitDrawLayer: aLayer [

	aLayer needsCaching: (self shouldCacheDrawLayer: aLayer).
	super visitDrawLayer: aLayer
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtCacheMarker >> visitGroupLayer: aLayer [

	aLayer needsCaching: (self shouldCacheGroupLayer: aLayer).
	super visitGroupLayer: aLayer
]

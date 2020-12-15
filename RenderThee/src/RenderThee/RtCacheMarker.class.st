Class {
	#name : #RtCacheMarker,
	#superclass : #RtLayerVisitor,
	#instVars : [
		'cachingStrategy'
	],
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtCacheMarker >> cachingStrategy [
	^ cachingStrategy
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtCacheMarker >> cachingStrategy: anObject [
	cachingStrategy := anObject
]

{
	#category : #testing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtCacheMarker >> shouldCacheDrawLayer: aLayer [

	^ cachingStrategy shouldCacheDrawLayer: aLayer
]

{
	#category : #testing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtCacheMarker >> shouldCacheGroupLayer: aLayer [

	^ cachingStrategy shouldCacheGroupLayer: aLayer
]

{
	#category : #visiting,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtCacheMarker >> visitDrawLayer: aLayer [

	aLayer needsCaching: (self shouldCacheDrawLayer: aLayer).
	super visitDrawLayer: aLayer
]

{
	#category : #visiting,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtCacheMarker >> visitGroupLayer: aLayer [

	aLayer needsCaching: (self shouldCacheGroupLayer: aLayer).
	super visitGroupLayer: aLayer
]

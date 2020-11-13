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
	#timestamp : ''
}
RtCacheMarker >> cachingStrategy [
	^ cachingStrategy
]

{
	#category : #accessing,
	#timestamp : ''
}
RtCacheMarker >> cachingStrategy: anObject [
	cachingStrategy := anObject
]

{
	#category : #testing,
	#timestamp : ''
}
RtCacheMarker >> shouldCacheDrawLayer: aLayer [

	^ cachingStrategy shouldCacheDrawLayer: aLayer
]

{
	#category : #testing,
	#timestamp : ''
}
RtCacheMarker >> shouldCacheGroupLayer: aLayer [

	^ cachingStrategy shouldCacheGroupLayer: aLayer
]

{
	#category : #visiting,
	#timestamp : ''
}
RtCacheMarker >> visitDrawLayer: aLayer [

	aLayer needsCaching: (self shouldCacheDrawLayer: aLayer).
	super visitDrawLayer: aLayer
]

{
	#category : #visiting,
	#timestamp : ''
}
RtCacheMarker >> visitGroupLayer: aLayer [

	aLayer needsCaching: (self shouldCacheGroupLayer: aLayer).
	super visitGroupLayer: aLayer
]

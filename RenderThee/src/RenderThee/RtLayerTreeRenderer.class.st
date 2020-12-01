Class {
	#name : #RtLayerTreeRenderer,
	#superclass : #RtMorphicRenderer,
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
RtLayerTreeRenderer class >> morph: aMorph imageStore: anImageStore [

	^ self basicNew
		initializeWithMorph: aMorph imageStore: anImageStore;
		yourself
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
RtLayerTreeRenderer >> initializeWithMorph: aMorph imageStore: anImageStore [

	super initializeWithMorph: aMorph imageStore: anImageStore.
	
	morph morphsToRedraw: nil.
	morph allMorphsDo: [:m | m groupLayer: nil].
	
	RtRecordingCanvas record: morph
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
RtLayerTreeRenderer >> release [

	imageStore glLibrary context destroy
]

{
	#category : #rendering,
	#timestamp : ''
}
RtLayerTreeRenderer >> renderFrame [

	imageStore canvasDo: [:canvas |
		| cacheMarker rootLayer |
		morph updateLayerTree.
	
		rootLayer := morph groupLayer.
	
		cacheMarker := RtCacheMarker new
							"cachingStrategy: (RtAlwaysCaching new);"
							"cachingStrategy: (RtNeverCaching new);"
							cachingStrategy: (RtCacheAfterUnchangedDraws threshold: 3);
							yourself.
		cacheMarker visit: rootLayer. 
		rootLayer compositeOn: canvas]
]

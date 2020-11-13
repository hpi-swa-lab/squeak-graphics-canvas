Class {
	#name : #RtLayerTreeRenderer,
	#superclass : #RtMorphicRenderer,
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtLayerTreeRenderer class >> morph: aMorph imageStore: anImageStore [

	^ self basicNew
		initializeWithMorph: aMorph imageStore: anImageStore;
		yourself
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtLayerTreeRenderer >> initializeWithMorph: aMorph imageStore: anImageStore [

	super initializeWithMorph: aMorph imageStore: anImageStore.
	
	morph morphsToRedraw: nil.
	morph allMorphsDo: [:m | m groupLayer: nil].
	
	RtRecordingCanvas record: morph
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtLayerTreeRenderer >> release [

	imageStore glLibrary context destroy
]

{
	#category : #rendering,
	#timestamp : 'stlu 11/13/2020 18:20'
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

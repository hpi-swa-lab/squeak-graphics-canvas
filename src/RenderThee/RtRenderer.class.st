Class {
	#name : #RtRenderer,
	#superclass : #Object,
	#instVars : [
		'imageStore',
		'morph'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'instance creation' }
RtRenderer class >> morph: aMorph imageStore: anImageStore [

	^ self basicNew
		initializeWithMorph: aMorph imageStore: anImageStore;
		yourself
]

{ #category : #accessing }
RtRenderer >> imageStore [

	^ imageStore
]

{ #category : #accessing }
RtRenderer >> imageStore: anObject [

	imageStore := anObject
]

{ #category : #initialization }
RtRenderer >> initializeWithMorph: aMorph imageStore: anImageStore [

	super initialize.
	morph := aMorph.
	imageStore := anImageStore.
	
	morph morphsToRedraw: nil.
	morph allMorphsDo: [:m | m groupLayer: nil].
	
	RtRecordingCanvas record: morph
]

{ #category : #accessing }
RtRenderer >> morph [

	^ morph
]

{ #category : #accessing }
RtRenderer >> morph: anObject [

	morph := anObject
]

{ #category : #rendering }
RtRenderer >> renderFrame [

	| cacheMarker rootLayer |
	morph updateLayerTree.
	
	rootLayer := morph groupLayer.
	
	cacheMarker := RtCacheMarker new
						"cachingStrategy: (RtAlwaysCaching new);"
						"cachingStrategy: (RtNeverCaching new);"
						cachingStrategy: (RtCacheAfterUnchangedDraws threshold: 3);
						yourself.
	cacheMarker visit: rootLayer. 
	
	"imageStore extent: morph extent."
	imageStore canvasDo: [:canvas |
		rootLayer compositeOn: canvas]
]

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

	| cacheDecider rootLayer |
	morph updateLayerTree.
	
	rootLayer := morph groupLayer.
	
	cacheDecider := RtCacheMarker new
						canvasClass: GLCanvas;
						"cachingStrategy: (RtNeverCaching new);"
						cachingStrategy: (RtCacheAfterUnchangedDraws threshold: 100);
						yourself.
	cacheDecider visit: rootLayer. 
	
	imageStore extent: morph extent.
	imageStore canvasDo: [:canvas |
		| compositor |
		compositor := RtCompositor canvas: canvas.
		compositor visit: rootLayer]
]

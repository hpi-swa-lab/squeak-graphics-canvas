Class {
	#name : #RtOpenGLCompositor,
	#superclass : #RtCompositor,
	#instVars : [
		'canvas',
		'cachingStrategy'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'instance creation' }
RtOpenGLCompositor class >> canvas: aCanvas [

	^ self basicNew
		initializeWithCanvas: aCanvas;
		yourself
]

{ #category : #'instance creation' }
RtOpenGLCompositor class >> canvas: aCanvas cachingStrategy: aStrategy [

	^ self basicNew
		initializeWithCanvas: aCanvas;
		cachingStrategy: aStrategy;
		yourself
]

{ #category : #'instance creation' }
RtOpenGLCompositor class >> new [
	self shouldNotImplement
]

{ #category : #visiting }
RtOpenGLCompositor >> cachingStrategy: aStrategy [

	cachingStrategy := aStrategy
]

{ #category : #visiting }
RtOpenGLCompositor >> drawLayerCached: aLayer using: aCanvasClass on: aCanvas [

	| store |
	store := aLayer cache ifNil: [
		aLayer incrementDrawCounter.
		aLayer updateStoreOf: RtFramebufferStore using: aCanvasClass].
	
	aCanvas
		paintImageStore: store
		transform: Matrix4x4 identity
		sourceRect: store boundingBox
]

{ #category : #initialization }
RtOpenGLCompositor >> initializeWithCanvas: aCanvas [

	canvas := aCanvas
]

{ #category : #visiting }
RtOpenGLCompositor >> visitDrawLayer: aLayer [

	canvas transformBy: aLayer transform clippingTo: aLayer clipRect during: [:c |
		self drawLayerCached: aLayer using: RtFormCanvas on: c]
]

{ #category : #visiting }
RtOpenGLCompositor >> visitGroupLayer: aLayer [

	canvas transformBy: aLayer transform clippingTo: aLayer clipRect during: [:c |
		(cachingStrategy shouldCacheGroupLayer: aLayer)
			ifTrue: [self drawLayerCached: aLayer using: GLCanvas on: c]
			ifFalse: [
				aLayer incrementDrawCounter.
				aLayer children do: [:child | child visit: self]]]
]

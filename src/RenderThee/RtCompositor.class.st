Class {
	#name : #RtCompositor,
	#superclass : #RtLayerVisitor,
	#instVars : [
		'canvas'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'instance creation' }
RtCompositor class >> canvas: aCanvas [

	^ self basicNew
		initializeWithCanvas: aCanvas;
		yourself
]

{ #category : #'instance creation' }
RtCompositor class >> new [
	self shouldNotImplement
]

{ #category : #visiting }
RtCompositor >> drawLayerCached: aLayer using: aCanvasClass on: aCanvas [

	| store |
	store := aLayer cache ifNil: [
		aLayer incrementDrawCounter.
		aLayer updateStoreOf: RtFramebufferStore using: aCanvasClass].
	
	aCanvas
		paintImageStore: store
		transform: Matrix2x3 identity
		sourceRect: store boundingBox
]

{ #category : #initialization }
RtCompositor >> initializeWithCanvas: aCanvas [

	canvas := aCanvas
]

{ #category : #visiting }
RtCompositor >> visitDrawLayer: aLayer [

	canvas transformBy: aLayer transform clippingTo: aLayer clipRect during: [:c |
		self drawLayerCached: aLayer using: FormCanvas on: c]
]

{ #category : #visiting }
RtCompositor >> visitGroupLayer: aLayer [

	canvas transformBy: aLayer transform clippingTo: aLayer clipRect during: [:canvas |
		aLayer cachingCanvasClass
			ifNotNil: [:canvasClass | self drawLayerCached: aLayer using: canvasClass on: canvas]
			ifNil: [
				aLayer incrementDrawCounter.
				super visitGroupLayer: aLayer]]
]

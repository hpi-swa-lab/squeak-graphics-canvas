Class {
	#name : #RtOpenGLCompositor,
	#superclass : #RtLayerVisitor,
	#instVars : [
		'canvas'
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
RtOpenGLCompositor class >> new [
	self shouldNotImplement
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
		self drawLayerCached: aLayer using: FormCanvas on: c]
]

{ #category : #visiting }
RtOpenGLCompositor >> visitGroupLayer: aLayer [

	canvas transformBy: aLayer transform clippingTo: aLayer clipRect during: [:canvas |
		aLayer cachingCanvasClass
			ifNotNil: [:canvasClass | self drawLayerCached: aLayer using: canvasClass on: canvas]
			ifNil: [
				aLayer incrementDrawCounter.
				super visitGroupLayer: aLayer]]
]

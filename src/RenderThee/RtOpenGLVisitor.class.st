Class {
	#name : #RtOpenGLVisitor,
	#superclass : #RtLayerTreeVisitor,
	#instVars : [
		'canvas'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'instance creation' }
RtOpenGLVisitor class >> canvas: aCanvas [

	^ self basicNew
		initializeWithCanvas: aCanvas;
		yourself
]

{ #category : #'instance creation' }
RtOpenGLVisitor class >> new [
	self shouldNotImplement
]

{ #category : #texturization }
RtOpenGLVisitor >> compositeDrawLayer: aLayer [

	| store |
	store := RtFramebufferStore extent: aLayer extent.
	store texture image: aLayer rasterizeForm.
	^ store
]

{ #category : #texturization }
RtOpenGLVisitor >> compositeGroupLayer: aLayer [

	| store subCanvas |
	store := RtFramebufferStore extent: aLayer extent.
	subCanvas := GLCanvas extent: aLayer extent framebuffer: store framebuffer.
	subCanvas drawLayer: aLayer.
	^ store
]

{ #category : #initialization }
RtOpenGLVisitor >> initializeWithCanvas: aCanvas [

	canvas := aCanvas
]

{ #category : #visiting }
RtOpenGLVisitor >> visitDrawLayer: aLayer [

	| store |
	store := aLayer cache ifNil: [
				aLayer incrementDrawCounter.
				self compositeDrawLayer: aLayer].
	aLayer cache: store.
	
	canvas transformBy: aLayer transform clippingTo: aLayer clipRect during: [:c |
		c
			paintImageStore: store
			transform: Matrix4x4 identity
			sourceRect: store boundingBox]
]

{ #category : #visiting }
RtOpenGLVisitor >> visitGroupLayer: aLayer [

	aLayer shouldBeComposited
		ifTrue: [
			| store |
			store := aLayer cache ifNil: [
						aLayer incrementDrawCounter.
						self compositeGroupLayer: aLayer].
			aLayer cache: store.
			canvas transformBy: aLayer transform clippingTo: aLayer clipRect during: [:c |
				c
					paintImageStore: store
					transform: Matrix4x4 identity
					sourceRect: store boundingBox]]
		ifFalse: [
			aLayer incrementDrawCounter.
			aLayer children do: [:child | child visit: self]]
]

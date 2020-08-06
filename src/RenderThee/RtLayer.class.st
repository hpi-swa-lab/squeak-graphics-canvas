Class {
	#name : #RtLayer,
	#superclass : #Object,
	#instVars : [
		'parent',
		'outerTransform',
		'offset',
		'extent',
		'cache',
		'needsCaching',
		'isCached',
		'drawTime',
		'compositeTime',
		'drawsSinceInvalidation',
		'drawsSinceUpdate',
		'drawsCount'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'instance creation' }
RtLayer class >> bounds: aRectangle [

	^ self
		outerTransform: Matrix2x3 identity
		bounds: aRectangle
]

{ #category : #'instance creation' }
RtLayer class >> outerTransform: aMatrix bounds: aRectangle [

	^ self new
		outerTransform: aMatrix;
		bounds: aRectangle;
		yourself
]

{ #category : #visiting }
RtLayer >> accept: aVisitor [

	self subclassResponsibility
]

{ #category : #accessing }
RtLayer >> bounds [

	^ offset extent: extent
]

{ #category : #accessing }
RtLayer >> bounds: aRectangle [

	offset := aRectangle origin floor.
	extent := aRectangle extent ceiling
]

{ #category : #accessing }
RtLayer >> cache [

	^ cache
]

{ #category : #accessing }
RtLayer >> cache: anObject [

	cache := anObject
]

{ #category : #accessing }
RtLayer >> clipRect [

	^ outerTransform localBoundsToGlobal: self bounds
]

{ #category : #compositing }
RtLayer >> compositeOn: aCanvas [

	(RtCompositingCanvas canvas: aCanvas) compositeLayer: self
]

{ #category : #accessing }
RtLayer >> compositeTime [

	^ compositeTime
]

{ #category : #caching }
RtLayer >> createCacheOfType: anImageStoreClass [

	| store |
	store := anImageStoreClass extent: extent.
	store canvasDo: [:canvas |
		self compositeOn: canvas].
	^ store
]

{ #category : #compositing }
RtLayer >> drawOn: canvas [

	self subclassResponsibility
]

{ #category : #accessing }
RtLayer >> drawTime [

	^ drawTime
]

{ #category : #accessing }
RtLayer >> drawsCount [

	^ drawsCount
]

{ #category : #accessing }
RtLayer >> drawsSinceInvalidation [

	^ drawsSinceInvalidation
]

{ #category : #accessing }
RtLayer >> drawsSinceUpdate [

	^ drawsSinceUpdate
]

{ #category : #accessing }
RtLayer >> extent [

	^ extent
]

{ #category : #accessing }
RtLayer >> extent: anObject [

	extent := anObject
]

{ #category : #accessing }
RtLayer >> incrementDrawCounter [

	drawsSinceUpdate := drawsSinceUpdate + 1.
	drawsSinceInvalidation := drawsSinceInvalidation + 1.
	drawsCount := drawsCount + 1
]

{ #category : #initialization }
RtLayer >> initialize [

	super initialize.
	drawsSinceUpdate := 0.
	drawsSinceInvalidation := 0.
	drawsCount := 0.
	isCached := false.
	needsCaching := false
]

{ #category : #caching }
RtLayer >> invalidateCache [

	parent ifNotNil: [:p | p invalidateCache].
	isCached := false.
	drawsSinceInvalidation := 0
]

{ #category : #accessing }
RtLayer >> isCached [

	^ isCached
]

{ #category : #accessing }
RtLayer >> needsCaching [

	^ needsCaching
]

{ #category : #accessing }
RtLayer >> needsCaching: anObject [

	needsCaching := anObject
]

{ #category : #accessing }
RtLayer >> offset [

	^ offset
]

{ #category : #accessing }
RtLayer >> offset: anObject [

	offset := anObject
]

{ #category : #utilities }
RtLayer >> open [

	self assuredForm asMorph openInHand
]

{ #category : #accessing }
RtLayer >> outerTransform [

	^ outerTransform
]

{ #category : #accessing }
RtLayer >> outerTransform: anObject [

	outerTransform := anObject
]

{ #category : #accessing }
RtLayer >> parent [

	^ parent
]

{ #category : #accessing }
RtLayer >> parent: aLayer [

	parent := aLayer
]

{ #category : #accessing }
RtLayer >> transform [

	^ outerTransform composedWithLocal: (Matrix2x3 withOffset: offset)
]

{ #category : #caching }
RtLayer >> updateCacheFor: aCanvas [

	self subclassResponsibility
]

{ #category : #caching }
RtLayer >> validCache: anImageStore [

	cache := anImageStore.
	isCached := true.
	needsCaching := false
]

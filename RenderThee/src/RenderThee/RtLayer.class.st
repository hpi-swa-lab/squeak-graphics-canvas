"
I am a generic node of the layer tree.
I know how to draw myself.

Instance Variables
	cache:		the cache used by this layer
	compositeTime:		<Object>
	drawTime:		<Object>
	drawsCount:		<Object>
	drawsSinceInvalidation:		<Object>
	drawsSinceUpdate:		<Object>
	extent:		<Object>
	parent:		<Object>
	transform:		<Object>

"
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
		'drawsSinceInvalidation',
		'drawsSinceUpdate',
		'drawsCount'
	],
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
RtLayer class >> bounds: aRectangle [

	^ self
		outerTransform: Matrix2x3 identity
		bounds: aRectangle
]

{
	#category : #'instance creation',
	#timestamp : ''
}
RtLayer class >> outerTransform: aMatrix bounds: aRectangle [

	^ self new
		outerTransform: aMatrix;
		bounds: aRectangle;
		yourself
]

{
	#category : #visiting,
	#timestamp : ''
}
RtLayer >> accept: aVisitor [

	self subclassResponsibility
]

{
	#category : #converting,
	#timestamp : ''
}
RtLayer >> asForm [

	| fc |
	fc := FormCanvas extent: extent.
	self compositeOn: fc.
	^ fc form
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> bounds [

	^ offset extent: extent
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> bounds: aRectangle [

	offset := aRectangle origin floor.
	extent := aRectangle extent ceiling
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> cache [

	^ cache
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> cache: anObject [

	cache := anObject
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> clipRect [

	^ outerTransform localBoundsToGlobal: self bounds
]

{
	#category : #compositing,
	#timestamp : ''
}
RtLayer >> compositeOn: aCanvas [

	(RtCompositingCanvas canvas: aCanvas) compositeLayer: self
]

{
	#category : #caching,
	#timestamp : ''
}
RtLayer >> createCacheOfType: anImageStoreClass [

	| store |
	store := anImageStoreClass extent: extent.
	store canvasDo: [:canvas |
		self compositeOn: canvas].
	^ store
]

{
	#category : #caching,
	#timestamp : ''
}
RtLayer >> deleteCache [

	cache ifNotNil: [cache release].
	cache := nil.
	isCached := false.
]

{
	#category : #compositing,
	#timestamp : ''
}
RtLayer >> drawLayerOn: canvas [

	self subclassResponsibility
]

{
	#category : #compositing,
	#timestamp : ''
}
RtLayer >> drawOn: canvas [

	self subclassResponsibility
]

{
	#category : #'accessing - metrics',
	#timestamp : ''
}
RtLayer >> drawsCount [

	^ drawsCount
]

{
	#category : #'accessing - metrics',
	#timestamp : ''
}
RtLayer >> drawsSinceInvalidation [

	^ drawsSinceInvalidation
]

{
	#category : #'accessing - metrics',
	#timestamp : ''
}
RtLayer >> drawsSinceUpdate [

	^ drawsSinceUpdate
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> extent [

	^ extent
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> extent: anObject [

	extent := anObject
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> incrementDrawCounter [

	drawsSinceUpdate := drawsSinceUpdate + 1.
	drawsSinceInvalidation := drawsSinceInvalidation + 1.
	drawsCount := drawsCount + 1
]

{
	#category : #initialization,
	#timestamp : ''
}
RtLayer >> initialize [

	super initialize.
	drawsSinceUpdate := 0.
	drawsSinceInvalidation := 0.
	drawsCount := 0.
	isCached := false.
	needsCaching := false
]

{
	#category : #caching,
	#timestamp : ''
}
RtLayer >> invalidateCache [

	parent ifNotNil: [:p | p invalidateCache].
	self deleteCache.
	drawsSinceInvalidation := 0
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> isCached [

	^ isCached
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> needsCaching [

	^ needsCaching
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> needsCaching: anObject [

	needsCaching := anObject
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> offset [

	^ offset
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> offset: anObject [

	offset := anObject
]

{
	#category : #debugging,
	#timestamp : ''
}
RtLayer >> open [

	^ self asForm asMorph openInHand
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> outerTransform [

	^ outerTransform
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> outerTransform: anObject [

	outerTransform := anObject
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> parent [

	^ parent
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> parent: aLayer [

	parent := aLayer
]

{
	#category : #accessing,
	#timestamp : ''
}
RtLayer >> transform [

	^ outerTransform composedWithLocal: (Matrix2x3 withOffset: offset)
]

{
	#category : #caching,
	#timestamp : ''
}
RtLayer >> validCache: anImageStore [

	cache := anImageStore.
	isCached := true.
	needsCaching := false
]

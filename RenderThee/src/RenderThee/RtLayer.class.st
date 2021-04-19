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
	#'squeak_changestamp' : ''
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer class >> bounds: aRectangle [

	^ self
		outerTransform: Matrix2x3 identity
		bounds: aRectangle
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer class >> outerTransform: aMatrix bounds: aRectangle [

	^ self new
		outerTransform: aMatrix;
		bounds: aRectangle;
		yourself
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> accept: aVisitor [

	self subclassResponsibility
]

{
	#category : #converting,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> asForm [

	| fc |
	fc := FormCanvas extent: extent.
	self compositeOn: fc.
	^ fc form
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> bounds [

	^ offset extent: extent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> bounds: aRectangle [

	offset := aRectangle origin floor.
	extent := aRectangle extent ceiling
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> cache [

	^ cache
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> cache: anObject [

	cache := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> clipRect [

	^ outerTransform localBoundsToGlobal: self bounds
]

{
	#category : #compositing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> compositeOn: aCanvas [

	(RtCompositingCanvas canvas: aCanvas) compositeLayer: self
]

{
	#category : #caching,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
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
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> deleteCache [

	cache ifNotNil: [cache release].
	cache := nil.
	isCached := false.
]

{
	#category : #compositing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> drawLayerOn: canvas [

	self subclassResponsibility
]

{
	#category : #compositing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> drawOn: canvas [

	self subclassResponsibility
]

{
	#category : #'accessing - metrics',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> drawsCount [

	^ drawsCount
]

{
	#category : #'accessing - metrics',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> drawsSinceInvalidation [

	^ drawsSinceInvalidation
]

{
	#category : #'accessing - metrics',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> drawsSinceUpdate [

	^ drawsSinceUpdate
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> extent [

	^ extent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> extent: anObject [

	extent := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> incrementDrawCounter [

	drawsSinceUpdate := drawsSinceUpdate + 1.
	drawsSinceInvalidation := drawsSinceInvalidation + 1.
	drawsCount := drawsCount + 1
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
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
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> invalidateCache [

	parent ifNotNil: [:p | p invalidateCache].
	self deleteCache.
	drawsSinceInvalidation := 0
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> isCached [

	^ isCached
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> needsCaching [

	^ needsCaching
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> needsCaching: anObject [

	needsCaching := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> offset [

	^ offset
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> offset: anObject [

	offset := anObject
]

{
	#category : #debugging,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> open [

	^ self asForm asMorph openInHand
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> outerTransform [

	^ outerTransform
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> outerTransform: anObject [

	outerTransform := anObject
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> parent [

	^ parent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> parent: aLayer [

	parent := aLayer
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> transform [

	^ outerTransform composedWithLocal: (Matrix2x3 withOffset: offset)
]

{
	#category : #caching,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtLayer >> validCache: anImageStore [

	cache := anImageStore.
	isCached := true.
	needsCaching := false
]

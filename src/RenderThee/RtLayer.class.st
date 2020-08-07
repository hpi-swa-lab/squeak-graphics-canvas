"
A RtLayer is a generic vertex of the layer tree (scene graph).
It knows how to draw itself in a cached or uncached way.

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
		'transform',
		'extent',
		'cache',
		'drawTime',
		'compositeTime',
		'drawsSinceInvalidation',
		'drawsSinceUpdate',
		'drawsCount'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #visiting }
RtLayer >> accept: aVisitor [

	self subclassResponsibility
]

{ #category : #initialization }
RtLayer >> bounds: aRectangle [

	self transform: (Matrix4x4 withOffset: aRectangle topLeft asVector3).
	self extent: aRectangle extent
]

{ #category : #accessing }
RtLayer >> cache [

	^ cache
]

{ #category : #accessing }
RtLayer >> cache: anObject [

	^ cache := anObject
]

{ #category : #initialization }
RtLayer >> clipRect [

	^ transform localBoundsToGlobal: (0@0 extent: extent)
]

{ #category : #accessing }
RtLayer >> compositeTime [
	^ compositeTime
]

{ #category : #accessing }
RtLayer >> compositeTime: anObject [
	compositeTime := anObject
]

{ #category : #compositing }
RtLayer >> createStoreOf: anImageStoreClass using: aCanvasClass [

	^ aCanvasClass extent: self extent store: anImageStoreClass do: [:canvas | | previousTransform |
		" note that our layer carries its own transform, but we want to paint it in the origin "
		previousTransform := self transform.
		self transform: Matrix4x4 identity.
		canvas drawLayer: self.
		self transform: previousTransform]
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
RtLayer >> drawTime: anObject [
	drawTime := anObject
]

{ #category : #visiting }
RtLayer >> drawsCount [

	^ drawsCount
]

{ #category : #accessing }
RtLayer >> drawsSinceInvalidation [
	^ drawsSinceInvalidation
]

{ #category : #accessing }
RtLayer >> drawsSinceInvalidation: anObject [
	drawsSinceInvalidation := anObject
]

{ #category : #accessing }
RtLayer >> drawsSinceUpdate [
	^ drawsSinceUpdate
]

{ #category : #accessing }
RtLayer >> drawsSinceUpdate: anObject [
	drawsSinceUpdate := anObject
]

{ #category : #accessing }
RtLayer >> extent [

	^ extent
]

{ #category : #accessing }
RtLayer >> extent: anObject [

	extent := anObject
]

{ #category : #visiting }
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
	drawsCount := 0
]

{ #category : #compositing }
RtLayer >> invalidateCache [

	self parent ifNotNil: [:p | p invalidateCache].
	cache := nil.
	drawsSinceInvalidation := 0
]

{ #category : #utilities }
RtLayer >> open [

	self assuredForm asMorph openInHand
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

	^ transform
]

{ #category : #accessing }
RtLayer >> transform: anObject [

	transform := anObject
]

{ #category : #compositing }
RtLayer >> updateStoreOf: anImageStoreClass using: aCanvasClass [

	^ cache := self createStoreOf: anImageStoreClass using: aCanvasClass
]

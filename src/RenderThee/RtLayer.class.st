Class {
	#name : #RtLayer,
	#superclass : #RtTreeNode,
	#instVars : [
		'transform',
		'extent',
		'cache',
		'drawTime',
		'rasterizationTime',
		'drawsSinceInvalidation',
		'drawsSinceUpdate'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #visiting }
RtLayer >> assuredForm [

	^ cache ifNil: [cache := self rasterizeForm]
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

	^ self transform translation asPoint extent: self extent
]

{ #category : #compositing }
RtLayer >> drawOn: canvas [
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
	drawsSinceInvalidation := drawsSinceInvalidation + 1
]

{ #category : #initialization }
RtLayer >> initialize [

	super initialize.
	drawsSinceUpdate := 0.
	drawsSinceInvalidation := 0
]

{ #category : #compositing }
RtLayer >> invalidateCache [

	self parent ifNotNil: [:p | p invalidateCache].
	cache := nil.
	drawsSinceInvalidation := 0
]

{ #category : #visiting }
RtLayer >> isRasterized [

	self flag: #todo.
	^ self needsRasterize
]

{ #category : #visiting }
RtLayer >> needsRasterize [

	^ drawsSinceInvalidation >= 30
]

{ #category : #utilities }
RtLayer >> open [

	self assuredForm asMorph openInHand
]

{ #category : #visiting }
RtLayer >> rasterizeForm [

	| fc |
	fc := RtFormCanvas extent: extent.
	self visit: (RtRasterizeVisitor canvas: fc).
	^ fc form
]

{ #category : #accessing }
RtLayer >> transform [

	^ transform
]

{ #category : #accessing }
RtLayer >> transform: anObject [

	transform := anObject
]

{ #category : #visiting }
RtLayer >> visit: aVisitor [

	self subclassResponsibility
]

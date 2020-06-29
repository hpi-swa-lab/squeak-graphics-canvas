Class {
	#name : #RtLayer,
	#superclass : #RtTreeNode,
	#instVars : [
		'transform',
		'extent',
		'cache'
	],
	#category : 'RenderThee-LayerTree'
}

{ #category : #visiting }
RtLayer >> assuredForm [

	^ cache ifNil: [cache := self rasterizeForm]
]

{ #category : #visiting }
RtLayer >> assuredTexture: aRenderer [

	^ cache ifNil: [cache := self rasterizeTexture: aRenderer]
]

{ #category : #initialization }
RtLayer >> bounds: aRectangle [

	self transform: (Matrix4x4 withOffset: aRectangle topLeft asVector3).
	self extent: aRectangle extent
]

{ #category : #initialization }
RtLayer >> clipRect [

	^ self transform translation asPoint extent: self extent
]

{ #category : #compositing }
RtLayer >> drawOn: canvas [
]

{ #category : #accessing }
RtLayer >> extent [
	^ extent
]

{ #category : #accessing }
RtLayer >> extent: anObject [
	extent := anObject
]

{ #category : #utilities }
RtLayer >> iconOrThumbnailOfSize: anExtent [

	^ self assuredForm scaledIntoFormOfSize: anExtent
]

{ #category : #compositing }
RtLayer >> invalidateCache [

	self parent ifNotNil: [:p | p invalidateCache].
	cache := nil
]

{ #category : #visiting }
RtLayer >> isRasterized [

	self flag: #todo.
	^ self needsRasterize
]

{ #category : #visiting }
RtLayer >> needsRasterize [

	^ "transform isPureTranslation not" true
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

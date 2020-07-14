Class {
	#name : #RtGroupLayer,
	#superclass : #RtLayer,
	#instVars : [
		'children',
		'morph'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'instance creation' }
RtGroupLayer class >> bounds: aRectangle [

	^ self new
		bounds: aRectangle;
		yourself
]

{ #category : #'instance creation' }
RtGroupLayer class >> offset: offset extent: extent [

	^ self transform: (Matrix4x4 withOffset: offset asVector3) extent: extent
]

{ #category : #'instance creation' }
RtGroupLayer class >> transform: aMatrix extent: extent [

	^ self new
		transform: aMatrix;
		extent: extent;
		yourself
]

{ #category : #accessing }
RtGroupLayer >> addChild: aLayer [

	children add: aLayer.
	aLayer parent: self
]

{ #category : #accessing }
RtGroupLayer >> bounds [

	^ self transform translation asPoint extent: self extent
]

{ #category : #accessing }
RtGroupLayer >> children [

	^ children
]

{ #category : #accessing }
RtGroupLayer >> clear [

	children do: [ :child | child parent: nil ].

	children := OrderedCollection new
]

{ #category : #drawing }
RtGroupLayer >> drawChildrenOn: canvas [

	children do: [:layer | layer drawOn: canvas]
]

{ #category : #drawing }
RtGroupLayer >> drawOn: aCanvas [

	cache
		ifNil: [children do: [:layer | aCanvas drawLayer: layer]]
		ifNotNil: [:store | aCanvas
							paintImageStore: store
							transform: transform
							sourceRect: store boundingBox]
]

{ #category : #initialization }
RtGroupLayer >> initialize [

	super initialize.
	children := OrderedCollection new
]

{ #category : #accessing }
RtGroupLayer >> layers [

	^ children
]

{ #category : #accessing }
RtGroupLayer >> morph [
	^ morph
]

{ #category : #accessing }
RtGroupLayer >> morph: anObject [
	morph := anObject
]

{ #category : #initialization }
RtGroupLayer >> update [

	self
		clear;
		invalidateCache.
		
	self parent ifNotNil: [:parent |
		self bounds: (morph bounds translateBy: parent bounds origin negated)].
	
	(RtRecordingCanvas layer: self) reRecord: morph.
	
	drawsSinceUpdate := 0
]

{ #category : #visiting }
RtGroupLayer >> visit: aVisitor [

	aVisitor visitGroupLayer: self
]

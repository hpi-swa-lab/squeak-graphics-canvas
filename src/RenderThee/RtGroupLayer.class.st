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

	^ self transform: (Matrix2x3 withOffset: offset) extent: extent
]

{ #category : #'instance creation' }
RtGroupLayer class >> transform: aMatrix extent: extent [

	^ self new
		transform: aMatrix;
		extent: extent;
		yourself
]

{ #category : #visiting }
RtGroupLayer >> accept: aVisitor [

	^ aVisitor visitGroupLayer: self
]

{ #category : #accessing }
RtGroupLayer >> addChild: aLayer [

	children add: aLayer.
	aLayer parent: self
]

{ #category : #accessing }
RtGroupLayer >> bounds [

	self flag: #todo. "assumes pure translations"
	^ self transform offset extent: self extent
]

{ #category : #accessing }
RtGroupLayer >> children [

	^ children
]

{ #category : #drawing }
RtGroupLayer >> drawOn: aCanvas [

	aCanvas drawGroupLayer: self
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

{ #category : #printing }
RtGroupLayer >> printOn: aStream [

	super printOn: aStream.
	aStream
		space;
		nextPut: $[;
		nextPutAll: children size asString;
		nextPut: $].
	
	morph ifNotNil: [:m |
		aStream nextPutAll: ' for '.
		m printOn: aStream]
]

{ #category : #accessing }
RtGroupLayer >> removeAllChildren [

	children do: [ :child | child parent: nil ].
	children reset
]

{ #category : #initialization }
RtGroupLayer >> update [

	self
		removeAllChildren;
		invalidateCache.
		
	self parent ifNotNil: [:parent |
		self bounds: (morph bounds translateBy: parent bounds origin negated)].
	
	(RtRecordingCanvas layer: self) reRecord: morph.
	
	drawsSinceUpdate := 0
]

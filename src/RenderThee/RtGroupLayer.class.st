Class {
	#name : #RtGroupLayer,
	#superclass : #RtLayer,
	#instVars : [
		'children',
		'morph'
	],
	#category : #'RenderThee-LayerTree'
}

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
RtGroupLayer >> children [

	^ children
]

{ #category : #compositing }
RtGroupLayer >> drawLayerOn: aCanvas [

	aCanvas drawGroupLayer: self
]

{ #category : #compositing }
RtGroupLayer >> drawOn: aCanvas [

	children do: [:childLayer |
		aCanvas
			transformBy: childLayer transform
			clippingTo: childLayer clipRect
			during: [:c | c drawLayer: childLayer]]
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

{ #category : #caching }
RtGroupLayer >> removeAllCaches [

	cache := nil.
	children do: [:child | child removeAllCaches]
]

{ #category : #accessing }
RtGroupLayer >> removeAllChildren [

	children do: [ :child |
		child class == RtDrawLayer ifTrue: [child deleteCache].
		child parent: nil ].
	children reset
]

{ #category : #initialization }
RtGroupLayer >> update [

	self removeAllChildren.
	self invalidateCache.
	
	self bounds: morph bounds.
	(RtRecordingCanvas layer: self) reRecord: morph.
	
	drawsSinceUpdate := 0
]

{ #category : #caching }
RtGroupLayer >> updateCacheFor: aCanvas [

	aCanvas updateGroupLayerCache: self
]

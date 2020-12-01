Class {
	#name : #RtGroupLayer,
	#superclass : #RtLayer,
	#instVars : [
		'children',
		'morph'
	],
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #visiting,
	#timestamp : ''
}
RtGroupLayer >> accept: aVisitor [

	^ aVisitor visitGroupLayer: self
]

{
	#category : #accessing,
	#timestamp : ''
}
RtGroupLayer >> addChild: aLayer [

	children add: aLayer.
	aLayer parent: self
]

{
	#category : #accessing,
	#timestamp : ''
}
RtGroupLayer >> children [

	^ children
]

{
	#category : #compositing,
	#timestamp : ''
}
RtGroupLayer >> drawLayerOn: aCanvas [

	aCanvas drawGroupLayer: self
]

{
	#category : #compositing,
	#timestamp : ''
}
RtGroupLayer >> drawOn: aCanvas [

	children do: [:childLayer |
		aCanvas
			transformBy: childLayer transform
			clippingTo: childLayer clipRect
			during: [:c | c drawLayer: childLayer]]
]

{
	#category : #initialization,
	#timestamp : ''
}
RtGroupLayer >> initialize [

	super initialize.
	children := OrderedCollection new
]

{
	#category : #accessing,
	#timestamp : ''
}
RtGroupLayer >> layers [

	^ children
]

{
	#category : #accessing,
	#timestamp : ''
}
RtGroupLayer >> morph [

	^ morph
]

{
	#category : #accessing,
	#timestamp : ''
}
RtGroupLayer >> morph: anObject [

	morph := anObject
]

{
	#category : #printing,
	#timestamp : ''
}
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

{
	#category : #caching,
	#timestamp : ''
}
RtGroupLayer >> removeAllCaches [

	cache := nil.
	children do: [:child | child removeAllCaches]
]

{
	#category : #accessing,
	#timestamp : ''
}
RtGroupLayer >> removeAllChildren [

	children do: [ :child |
		child class == RtDrawLayer ifTrue: [child deleteCache].
		child parent: nil ].
	children reset
]

{
	#category : #initialization,
	#timestamp : ''
}
RtGroupLayer >> update [

	self removeAllChildren.
	self invalidateCache.
	
	self bounds: morph bounds.
	(RtRecordingCanvas rootLayer: self) reRecord: morph.
	
	drawsSinceUpdate := 0
]

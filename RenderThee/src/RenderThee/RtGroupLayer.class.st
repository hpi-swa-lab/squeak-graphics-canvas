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
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtGroupLayer >> accept: aVisitor [

	^ aVisitor visitGroupLayer: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtGroupLayer >> addChild: aLayer [

	children add: aLayer.
	aLayer parent: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtGroupLayer >> children [

	^ children
]

{
	#category : #compositing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtGroupLayer >> drawLayerOn: aCanvas [

	aCanvas drawGroupLayer: self
]

{
	#category : #compositing,
	#timestamp : 'stlu 11/13/2020 18:20'
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
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtGroupLayer >> initialize [

	super initialize.
	children := OrderedCollection new
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtGroupLayer >> layers [

	^ children
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtGroupLayer >> morph [

	^ morph
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtGroupLayer >> morph: anObject [

	morph := anObject
]

{
	#category : #printing,
	#timestamp : 'stlu 11/13/2020 18:20'
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
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtGroupLayer >> removeAllCaches [

	cache := nil.
	children do: [:child | child removeAllCaches]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtGroupLayer >> removeAllChildren [

	children do: [ :child |
		child class == RtDrawLayer ifTrue: [child deleteCache].
		child parent: nil ].
	children reset
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 18:20'
}
RtGroupLayer >> update [

	self removeAllChildren.
	self invalidateCache.
	
	self bounds: morph bounds.
	(RtRecordingCanvas rootLayer: self) reRecord: morph.
	
	drawsSinceUpdate := 0
]

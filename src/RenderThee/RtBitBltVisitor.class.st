Class {
	#name : #RtBitBltVisitor,
	#superclass : #RtLayerTreeVisitor,
	#instVars : [
		'canvas'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'instance creation' }
RtBitBltVisitor class >> canvas: aCanvas [

	^ self new
		canvas: aCanvas;
		yourself
]

{ #category : #accessing }
RtBitBltVisitor >> canvas: aCanvas [

	canvas := aCanvas
]

{ #category : #visiting }
RtBitBltVisitor >> visitChildLayer: aLayer [

	canvas save.
	canvas clipRect: aLayer clipRect.
	canvas concat: aLayer transform.
	
	aLayer visit: self.
	
	canvas restore
]

{ #category : #visiting }
RtBitBltVisitor >> visitDrawLayer: aLayer [

	aLayer commands do: [:cmd |
		cmd drawOn: canvas]
]

{ #category : #visiting }
RtBitBltVisitor >> visitGroupLayer: aLayer [

	aLayer children do: [:childLayer |
		self visitChildLayer: childLayer]
]

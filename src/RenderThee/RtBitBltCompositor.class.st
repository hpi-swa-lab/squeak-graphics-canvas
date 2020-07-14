Class {
	#name : #RtBitBltCompositor,
	#superclass : #RtCompositor,
	#instVars : [
		'canvas'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'instance creation' }
RtBitBltCompositor class >> canvas: aCanvas [

	^ self new
		canvas: aCanvas;
		yourself
]

{ #category : #accessing }
RtBitBltCompositor >> canvas: aCanvas [

	canvas := aCanvas
]

{ #category : #visiting }
RtBitBltCompositor >> visitChildLayer: aLayer [

	canvas save.
	canvas clipRect: aLayer clipRect.
	canvas concat: aLayer transform.
	
	aLayer visit: self.
	
	canvas restore
]

{ #category : #visiting }
RtBitBltCompositor >> visitDrawLayer: aLayer [

	aLayer commands do: [:cmd |
		cmd drawOn: canvas]
]

{ #category : #visiting }
RtBitBltCompositor >> visitGroupLayer: aLayer [

	aLayer children do: [:childLayer |
		self visitChildLayer: childLayer]
]

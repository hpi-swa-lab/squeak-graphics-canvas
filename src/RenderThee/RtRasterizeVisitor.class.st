Class {
	#name : #RtRasterizeVisitor,
	#superclass : #RtLayerTreeVisitor,
	#instVars : [
		'canvas'
	],
	#category : 'RenderThee-LayerTree'
}

{ #category : #'instance creation' }
RtRasterizeVisitor class >> canvas: aCanvas [

	^ self new
		canvas: aCanvas;
		yourself
]

{ #category : #accessing }
RtRasterizeVisitor >> canvas: aCanvas [

	canvas := aCanvas
]

{ #category : #visiting }
RtRasterizeVisitor >> visitChildLayer: aLayer [

	canvas save.
	canvas clipRect: aLayer clipRect.
	canvas concat: aLayer transform.
	
	aLayer visit: self.
	
	canvas restore
]

{ #category : #visiting }
RtRasterizeVisitor >> visitDrawLayer: aLayer [

	aLayer commands do: [:cmd |
		cmd drawOn: canvas].
	canvas frameRectangle: canvas clipRect color: Color red
]

{ #category : #visiting }
RtRasterizeVisitor >> visitGroupLayer: aLayer [

	aLayer children do: [:childLayer | self visitChildLayer: childLayer]
]

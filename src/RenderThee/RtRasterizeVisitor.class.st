Class {
	#name : #RtRasterizeVisitor,
	#superclass : #RtLayerTreeVisitor,
	#instVars : [
		'canvas'
	],
	#category : #'RenderThee-LayerTree'
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

	canvas
		translateBy: aLayer transform translation asPoint
		clippingTo: aLayer clipRect
		during: [:childCanvas | | previousCanvas |
			previousCanvas := canvas.
			canvas := childCanvas.
			aLayer visit: self.
			canvas := previousCanvas.
			childCanvas drawString: aLayer transform translation asString at: 0 @ 0 font: nil color: Color red]
]

{ #category : #visiting }
RtRasterizeVisitor >> visitDrawLayer: aLayer [

	aLayer commands do: [:cmd |
		cmd drawOn: canvas]
]

{ #category : #visiting }
RtRasterizeVisitor >> visitGroupLayer: aLayer [

	aLayer children do: [:childLayer | self visitChildLayer: childLayer]
]

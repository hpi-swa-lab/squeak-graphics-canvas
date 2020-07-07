Class {
	#name : #RtDrawRectangle,
	#superclass : #RtDrawShape,
	#category : 'RenderThee-CanvasCommands'
}

{ #category : #drawing }
RtDrawRectangle >> drawOn: aCanvas [

	aCanvas
		frameAndFillRectangle: bounds
		fillStyle: fillStyle
		borderStyle: borderStyle
]

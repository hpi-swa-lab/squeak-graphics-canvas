Class {
	#name : #PicDrawRectangle,
	#superclass : #PicDrawShape,
	#category : #'RenderThee-Pictures'
}

{ #category : #drawing }
PicDrawRectangle >> drawOn: aCanvas [

	aCanvas
		frameAndFillRectangle: bounds
		fillStyle: fillStyle
		borderStyle: borderStyle
]

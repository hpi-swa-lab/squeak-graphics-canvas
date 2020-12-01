Class {
	#name : #PicDrawRectangle,
	#superclass : #PicDrawShape,
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #drawing,
	#timestamp : ''
}
PicDrawRectangle >> drawOn: aCanvas [

	aCanvas
		frameAndFillRectangle: bounds
		fillStyle: fillStyle
		borderStyle: borderStyle
]

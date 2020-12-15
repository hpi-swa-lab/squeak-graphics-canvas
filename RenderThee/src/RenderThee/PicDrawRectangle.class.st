Class {
	#name : #PicDrawRectangle,
	#superclass : #PicDrawShape,
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawRectangle >> drawOn: aCanvas [

	aCanvas
		frameAndFillRectangle: bounds
		fillStyle: fillStyle
		borderStyle: borderStyle
]

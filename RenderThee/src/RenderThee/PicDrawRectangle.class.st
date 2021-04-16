Class {
	#name : #PicDrawRectangle,
	#superclass : #PicDrawShape,
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:05'
}
PicDrawRectangle >> acceptVisitor: aVisitor [

	aVisitor visitRectangle: self
]

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

{
	#category : #testing,
	#timestamp : 'stlu 3/13/2021 12:28'
}
PicDrawRectangle >> isRectangle [

	^ true
]

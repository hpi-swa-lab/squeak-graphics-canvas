Class {
	#name : #PicDrawOval,
	#superclass : #PicDrawShape,
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #drawing,
	#timestamp : ''
}
PicDrawOval >> drawOn: aCanvas [

	self flag: #todo.
	aCanvas
		fillOval: bounds
		fillStyle: fillStyle
		borderWidth: borderStyle width
		borderColor: borderStyle color
]

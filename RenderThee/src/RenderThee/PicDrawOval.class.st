Class {
	#name : #PicDrawOval,
	#superclass : #PicDrawShape,
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawOval >> drawOn: aCanvas [

	self flag: #todo.
	aCanvas
		fillOval: bounds
		fillStyle: fillStyle
		borderWidth: borderStyle width
		borderColor: borderStyle color
]

Class {
	#name : #PicDrawOval,
	#superclass : #PicDrawShape,
	#category : #'RenderThee-Pictures'
}

{ #category : #drawing }
PicDrawOval >> drawOn: aCanvas [

	self flag: #todo.
	aCanvas
		fillOval: bounds
		fillStyle: fillStyle
		borderWidth: borderStyle width
		borderColor: borderStyle color
]

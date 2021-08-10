Class {
	#name : #PicOval,
	#superclass : #PicShape,
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:05'
}
PicOval >> acceptVisitor: aVisitor [

	aVisitor visitOval: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:33'
}
PicOval >> drawOn: aCanvas [

	aCanvas
		fillOval: bounds
		fillStyle: fillStyle
		borderStyle: borderStyle
]

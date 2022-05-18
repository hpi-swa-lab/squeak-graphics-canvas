Class {
	#name : #PicOvalPrim,
	#superclass : #PicShapePrim,
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:06'
}
PicOvalPrim >> acceptVisitor: aVisitor [

	^ aVisitor visitOval: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/16/2022 17:49'
}
PicOvalPrim >> drawOn: aCanvas [

	aCanvas
		fillOval: bounds
		fillStyle: fillStyle
		borderStyle: borderStyle.
]

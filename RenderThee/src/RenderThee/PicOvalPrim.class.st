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
	#'squeak_changestamp' : 'stlu 5/19/2022 17:02'
}
PicOvalPrim >> drawOn: aCanvas [

	aCanvas
		fillOval: bounds
		fillStyle: (fillStyle ifNil: [TransparentFillStyle])
		borderStyle: (borderStyle ifNil: [TransparentBorderStyle]).
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:51'
}
PicOvalPrim >> pool [

	^ OvalPrimPool
]

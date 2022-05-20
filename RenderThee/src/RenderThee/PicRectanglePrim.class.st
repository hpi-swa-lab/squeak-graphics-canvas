Class {
	#name : #PicRectanglePrim,
	#superclass : #PicShapePrim,
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:07'
}
PicRectanglePrim >> acceptVisitor: aVisitor [

	^ aVisitor visitRectangle: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/19/2022 17:03'
}
PicRectanglePrim >> drawOn: aCanvas [

	aCanvas
		frameAndFillRectangle: bounds
		fillStyle: (fillStyle ifNil: [TransparentFillStyle])
		borderStyle: (borderStyle ifNil: [TransparentBorderStyle])
]

{
	#category : #thumbnail,
	#'squeak_changestamp' : 'stlu 5/13/2022 16:57'
}
PicRectanglePrim >> iconOrThumbnailOfSize: aNumberOrPoint [ 
	"Answer an appropiate form to represent the receiver"
	| canvas |
	canvas := FormCanvas extent: aNumberOrPoint asPoint depth: 32.
	canvas
		frameAndFillRectangle: (0@0 extent: aNumberOrPoint)
		fillStyle: fillStyle
		borderStyle: borderStyle.
	^ canvas form
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:00'
}
PicRectanglePrim >> isRectangleNode [

	^ true
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:51'
}
PicRectanglePrim >> pool [

	^ RectanglePrimPool
]

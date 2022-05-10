Class {
	#name : #PicRectanglePrim,
	#superclass : #PicShapePrim,
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:05'
}
PicRectanglePrim >> acceptVisitor: aVisitor [

	aVisitor visitRectangle: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicRectanglePrim >> drawOn: aCanvas [

	aCanvas
		frameAndFillRectangle: bounds
		fillStyle: fillStyle
		borderStyle: borderStyle
]

{
	#category : #thumbnail,
	#'squeak_changestamp' : 'stlu 8/13/2021 16:45'
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

Class {
	#name : #PicRectangle,
	#superclass : #PicShape,
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:05'
}
PicRectangle >> acceptVisitor: aVisitor [

	aVisitor visitRectangle: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicRectangle >> drawOn: aCanvas [

	aCanvas
		frameAndFillRectangle: bounds
		fillStyle: fillStyle
		borderStyle: borderStyle
]

{
	#category : #thumbnail,
	#'squeak_changestamp' : 'stlu 8/13/2021 16:45'
}
PicRectangle >> iconOrThumbnailOfSize: aNumberOrPoint [ 
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
	#'squeak_changestamp' : 'stlu 3/13/2021 12:28'
}
PicRectangle >> isRectangle [

	^ true
]

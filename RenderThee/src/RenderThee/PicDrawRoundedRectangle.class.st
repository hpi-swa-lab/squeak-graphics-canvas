Class {
	#name : #PicDrawRoundedRectangle,
	#superclass : #PicDrawRectangle,
	#instVars : [
		'radius'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawRoundedRectangle class >> bounds: aRectangle radius: cornerRadius fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self new
		bounds: aRectangle;
		radius: cornerRadius;
		fillStyle: aFillStyle;
		borderStyle: aBorderStyle;
		yourself
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:05'
}
PicDrawRoundedRectangle >> acceptVisitor: aVisitor [

	aVisitor visitRoundedRectangle: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawRoundedRectangle >> drawOn: aCanvas [

	aCanvas
		frameAndFillRoundRect: bounds
		radius: radius
		fillStyle: fillStyle
		borderStyle: borderStyle
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawRoundedRectangle >> radius [

	^ radius
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawRoundedRectangle >> radius: anObject [

	radius := anObject.
]

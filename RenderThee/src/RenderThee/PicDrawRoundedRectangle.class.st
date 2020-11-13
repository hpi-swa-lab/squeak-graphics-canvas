Class {
	#name : #PicDrawRoundedRectangle,
	#superclass : #PicDrawRectangle,
	#instVars : [
		'radius'
	],
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
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
	#category : #drawing,
	#timestamp : ''
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
	#timestamp : ''
}
PicDrawRoundedRectangle >> radius [

	^ radius
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawRoundedRectangle >> radius: anObject [

	radius := anObject.
]

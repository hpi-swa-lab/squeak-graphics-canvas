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
	#timestamp : 'stlu 11/13/2020 18:20'
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
	#timestamp : 'stlu 11/13/2020 18:20'
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
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawRoundedRectangle >> radius [

	^ radius
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawRoundedRectangle >> radius: anObject [

	radius := anObject.
]

Class {
	#name : #PicRoundedRectanglePrim,
	#superclass : #PicRectanglePrim,
	#instVars : [
		'radius'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:07'
}
PicRoundedRectanglePrim >> acceptVisitor: aVisitor [

	^ aVisitor visitRoundedRectangle: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/16/2022 17:49'
}
PicRoundedRectanglePrim >> drawOn: aCanvas [

	aCanvas
		frameAndFillRoundRect: bounds
		radius: radius
		fillStyle: fillStyle
		borderStyle: borderStyle.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicRoundedRectanglePrim >> radius [

	^ radius
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicRoundedRectanglePrim >> radius: anObject [

	radius := anObject.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:00'
}
PicRoundedRectanglePrim >> renderOn: aRenderer [

	^ aRenderer renderRoundedRectangle: self
]

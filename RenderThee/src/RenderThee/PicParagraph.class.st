Class {
	#name : #PicParagraph,
	#superclass : #PicDrawing,
	#instVars : [
		'bounds',
		'color',
		'paragraph'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicParagraph class >> paragraph: aParagraph bounds: aRectangle color: aColor [

	^ self new
		paragraph: aParagraph;
		bounds: aRectangle;
		color: aColor;
		yourself
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:05'
}
PicParagraph >> acceptVisitor: aVisitor [

	aVisitor visitParagraph: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicParagraph >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicParagraph >> bounds: anObject [

	bounds := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicParagraph >> color [

	^ color
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicParagraph >> color: anObject [

	color := anObject.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicParagraph >> drawOn: aCanvas [

	aCanvas
		paragraph: paragraph
		bounds: bounds
		color: color
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicParagraph >> estimatedBounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicParagraph >> paragraph [

	^ paragraph
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicParagraph >> paragraph: anObject [

	paragraph := anObject.
]
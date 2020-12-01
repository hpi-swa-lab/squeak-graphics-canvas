Class {
	#name : #PicDrawParagraph,
	#superclass : #PicDraw,
	#instVars : [
		'bounds',
		'color',
		'paragraph'
	],
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
PicDrawParagraph class >> paragraph: aParagraph bounds: aRectangle color: aColor [

	^ self new
		paragraph: aParagraph;
		bounds: aRectangle;
		color: aColor;
		yourself
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawParagraph >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawParagraph >> bounds: anObject [

	bounds := anObject.
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawParagraph >> color [

	^ color
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawParagraph >> color: anObject [

	color := anObject.
]

{
	#category : #drawing,
	#timestamp : ''
}
PicDrawParagraph >> drawOn: aCanvas [

	aCanvas
		paragraph: paragraph
		bounds: bounds
		color: color
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawParagraph >> estimatedBounds [

	^ bounds
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawParagraph >> paragraph [

	^ paragraph
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawParagraph >> paragraph: anObject [

	paragraph := anObject.
]

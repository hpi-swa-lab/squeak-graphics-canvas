Class {
	#name : #PicDrawParagraph,
	#superclass : #PicDraw,
	#instVars : [
		'bounds',
		'color',
		'paragraph'
	],
	#category : #'RenderThee-Pictures'
}

{ #category : #'instance creation' }
PicDrawParagraph class >> paragraph: aParagraph bounds: aRectangle color: aColor [

	^ self new
		paragraph: aParagraph;
		bounds: aRectangle;
		color: aColor;
		yourself
]

{ #category : #accessing }
PicDrawParagraph >> bounds [

	^ bounds
]

{ #category : #accessing }
PicDrawParagraph >> bounds: anObject [

	bounds := anObject.
]

{ #category : #accessing }
PicDrawParagraph >> color [

	^ color
]

{ #category : #accessing }
PicDrawParagraph >> color: anObject [

	color := anObject.
]

{ #category : #drawing }
PicDrawParagraph >> drawOn: aCanvas [

	aCanvas
		paragraph: paragraph
		bounds: bounds
		color: color
]

{ #category : #accessing }
PicDrawParagraph >> estimatedBounds [

	^ bounds
]

{ #category : #accessing }
PicDrawParagraph >> paragraph [

	^ paragraph
]

{ #category : #accessing }
PicDrawParagraph >> paragraph: anObject [

	paragraph := anObject.
]

Class {
	#name : #PicDrawImage,
	#superclass : #PicDraw,
	#instVars : [
		'form',
		'origin',
		'sourceRect',
		'combinationRule'
	],
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
PicDrawImage class >> form: aForm origin: aPoint sourceRect: aRectangle rule: anInteger [

	^ self new
		form: aForm;
		origin: aPoint;
		sourceRect: aRectangle;
		combinationRule: anInteger;
		yourself
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawImage >> combinationRule [

	^ combinationRule
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawImage >> combinationRule: anObject [

	combinationRule := anObject
]

{
	#category : #drawing,
	#timestamp : ''
}
PicDrawImage >> drawOn: aCanvas [

	aCanvas
		image: form
		at: origin
		sourceRect: sourceRect
		rule: combinationRule
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawImage >> estimatedBounds [

	^ origin extent: sourceRect extent
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawImage >> form [

	^ form
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawImage >> form: anObject [

	form := anObject.
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawImage >> origin [

	^ origin
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawImage >> origin: anObject [

	origin := anObject.
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawImage >> sourceRect [

	^ sourceRect
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawImage >> sourceRect: anObject [

	sourceRect := anObject.
]

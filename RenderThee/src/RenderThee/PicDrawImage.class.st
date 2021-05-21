Class {
	#name : #PicDrawImage,
	#superclass : #PicDraw,
	#instVars : [
		'form',
		'origin',
		'sourceRect',
		'combinationRule'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
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
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:04'
}
PicDrawImage >> acceptVisitor: aVisitor [

	aVisitor visitImage: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:54'
}
PicDrawImage >> bounds [

	^ origin extent: sourceRect extent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawImage >> combinationRule [

	^ combinationRule
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawImage >> combinationRule: anObject [

	combinationRule := anObject
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
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
	#'squeak_changestamp' : 'stlu 5/20/2021 21:55'
}
PicDrawImage >> estimatedBounds [

	^ self bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawImage >> form [

	^ form
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawImage >> form: anObject [

	form := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawImage >> origin [

	^ origin
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawImage >> origin: anObject [

	origin := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawImage >> sourceRect [

	^ sourceRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawImage >> sourceRect: anObject [

	sourceRect := anObject.
]

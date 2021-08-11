Class {
	#name : #PicImage,
	#superclass : #PicDrawing,
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
PicImage class >> form: aForm origin: aPoint sourceRect: aRectangle rule: anInteger [

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
PicImage >> acceptVisitor: aVisitor [

	aVisitor visitImage: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:54'
}
PicImage >> bounds [

	^ origin extent: sourceRect extent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImage >> combinationRule [

	^ combinationRule
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImage >> combinationRule: anObject [

	combinationRule := anObject
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImage >> drawOn: aCanvas [

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
PicImage >> estimatedBounds [

	^ self bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImage >> form [

	^ form
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImage >> form: anObject [

	form := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImage >> origin [

	^ origin
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImage >> origin: anObject [

	origin := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImage >> sourceRect [

	^ sourceRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImage >> sourceRect: anObject [

	sourceRect := anObject.
]
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
	#category : #thumbnail,
	#'squeak_changestamp' : 'stlu 8/13/2021 16:44'
}
PicImage >> iconOrThumbnailOfSize: aNumberOrPoint [ 
	"Answer an appropiate form to represent the receiver"
	| canvas |
	canvas := FormCanvas extent: aNumberOrPoint asPoint depth: 32.
	canvas
		transformBy: (MorphicTransform new withScale: (aNumberOrPoint asPoint / sourceRect extent))
		during: [:c |
			c
				image: form
				at: 0@0
				sourceRect: sourceRect
				rule: combinationRule].
	^ canvas form
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 8/13/2021 13:12'
}
PicImage >> isTranslucent [

	^ form isTranslucent "most likely true even if actually opaque"
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

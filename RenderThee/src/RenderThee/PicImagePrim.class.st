Class {
	#name : #PicImagePrim,
	#superclass : #PicGraphicsPrim,
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
	#'squeak_changestamp' : 'stlu 5/16/2022 16:06'
}
PicImagePrim >> acceptVisitor: aVisitor [

	^ aVisitor visitImage: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImagePrim >> combinationRule [

	^ combinationRule
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImagePrim >> combinationRule: anObject [

	combinationRule := anObject
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/16/2022 17:09'
}
PicImagePrim >> drawOn: aCanvas [

	combinationRule = Form blend ifTrue: [
		^ aCanvas translucentImage: form at: origin sourceRect: sourceRect].
	combinationRule = Form paint ifTrue: [
		^ aCanvas paintImage: form at: origin sourceRect: sourceRect].
	combinationRule = Form over ifTrue: [
		^ aCanvas drawImage: form at: origin sourceRect: sourceRect].
	aCanvas image: form at: origin sourceRect: sourceRect rule: combinationRule.
	self flag: #todo. "probably dont even save bitblt rules"
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:55'
}
PicImagePrim >> estimatedBounds [

	^ self bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImagePrim >> form [

	^ form
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImagePrim >> form: anObject [

	form := anObject.
]

{
	#category : #thumbnail,
	#'squeak_changestamp' : 'stlu 8/13/2021 16:44'
}
PicImagePrim >> iconOrThumbnailOfSize: aNumberOrPoint [ 
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
	#'squeak_changestamp' : 'stlu 6/7/2022 15:15'
}
PicImagePrim >> isTranslucent [

	self flag: #todo. "test against combinationRule"
	^ true
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:04'
}
PicImagePrim >> isTransparent [

	^ false
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImagePrim >> origin [

	^ origin
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImagePrim >> origin: anObject [

	origin := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:50'
}
PicImagePrim >> pool [

	^ ImagePrimPool
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImagePrim >> sourceRect [

	^ sourceRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicImagePrim >> sourceRect: anObject [

	sourceRect := anObject.
]

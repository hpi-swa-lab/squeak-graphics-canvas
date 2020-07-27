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

{ #category : #'instance creation' }
PicDrawImage class >> form: aForm origin: aPoint sourceRect: aRectangle rule: anInteger [

	^ self new
		form: aForm;
		origin: aPoint;
		sourceRect: aRectangle;
		combinationRule: anInteger;
		yourself
]

{ #category : #accessing }
PicDrawImage >> combinationRule [

	^ combinationRule
]

{ #category : #accessing }
PicDrawImage >> combinationRule: anObject [

	combinationRule := anObject
]

{ #category : #drawing }
PicDrawImage >> drawOn: aCanvas [

	aCanvas
		image: form
		at: origin
		sourceRect: sourceRect
		rule: combinationRule
]

{ #category : #accessing }
PicDrawImage >> estimatedBounds [

	^ origin extent: sourceRect extent
]

{ #category : #accessing }
PicDrawImage >> form [

	^ form
]

{ #category : #accessing }
PicDrawImage >> form: anObject [

	form := anObject.
]

{ #category : #accessing }
PicDrawImage >> origin [

	^ origin
]

{ #category : #accessing }
PicDrawImage >> origin: anObject [

	origin := anObject.
]

{ #category : #accessing }
PicDrawImage >> sourceRect [

	^ sourceRect
]

{ #category : #accessing }
PicDrawImage >> sourceRect: anObject [

	sourceRect := anObject.
]

Class {
	#name : #RtDrawImage,
	#superclass : #RtDrawCommand,
	#instVars : [
		'form',
		'origin',
		'sourceRect',
		'rule'
	],
	#category : 'RenderThee-CanvasCommands'
}

{ #category : #'instance creation' }
RtDrawImage class >> form: aForm origin: aPoint sourceRect: aRectangle rule: anInteger [

	^ self new
		form: aForm;
		origin: aPoint;
		sourceRect: aRectangle;
		rule: anInteger;
		yourself
]

{ #category : #drawing }
RtDrawImage >> drawOn: aCanvas [

	aCanvas
		image: form
		at: origin
		sourceRect: sourceRect
		rule: rule
]

{ #category : #accessing }
RtDrawImage >> form [

	^ form
]

{ #category : #accessing }
RtDrawImage >> form: anObject [

	form := anObject.
]

{ #category : #accessing }
RtDrawImage >> origin [

	^ origin
]

{ #category : #accessing }
RtDrawImage >> origin: anObject [

	origin := anObject.
]

{ #category : #accessing }
RtDrawImage >> rule [

	^ rule
]

{ #category : #accessing }
RtDrawImage >> rule: anObject [

	rule := anObject.
]

{ #category : #accessing }
RtDrawImage >> sourceRect [

	^ sourceRect
]

{ #category : #accessing }
RtDrawImage >> sourceRect: anObject [

	sourceRect := anObject.
]

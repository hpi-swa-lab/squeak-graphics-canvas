Class {
	#name : #RtDrawParagraph,
	#superclass : #RtDrawCommand,
	#instVars : [
		'bounds',
		'color',
		'paragraph'
	],
	#category : 'RenderThee-Drawing'
}

{ #category : #'instance creation' }
RtDrawParagraph class >> paragraph: aParagraph bounds: aRectangle color: aColor [

	^ self new
		paragraph: aParagraph;
		bounds: aRectangle;
		color: aColor;
		yourself
]

{ #category : #accessing }
RtDrawParagraph >> bounds [

	^ bounds
]

{ #category : #accessing }
RtDrawParagraph >> bounds: anObject [

	bounds := anObject.
]

{ #category : #accessing }
RtDrawParagraph >> color [

	^ color
]

{ #category : #accessing }
RtDrawParagraph >> color: anObject [

	color := anObject.
]

{ #category : #drawing }
RtDrawParagraph >> drawOn: aCanvas [

	aCanvas paragraph: self paragraph bounds: self bounds color: self color
]

{ #category : #accessing }
RtDrawParagraph >> paragraph [

	^ paragraph
]

{ #category : #accessing }
RtDrawParagraph >> paragraph: anObject [

	paragraph := anObject.
]

{ #category : #visiting }
RtDrawParagraph >> visit: aVisitor [

	^ aVisitor visitDrawParagraph: self
]

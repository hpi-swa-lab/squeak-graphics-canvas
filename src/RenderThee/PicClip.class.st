Class {
	#name : #PicClip,
	#superclass : #PicGroup,
	#instVars : [
		'clipRect'
	],
	#category : #'RenderThee-Pictures'
}

{ #category : #'instance creation' }
PicClip class >> rect: aRectangle [

	^ self new
		clipRect: aRectangle;
		yourself
]

{ #category : #accessing }
PicClip >> clipRect [

	^ clipRect
]

{ #category : #accessing }
PicClip >> clipRect: anObject [

	clipRect := anObject
]

{ #category : #drawing }
PicClip >> drawOn: aCanvas [

	aCanvas
		clipBy: clipRect
		during: [:c | super drawOn: c]
]

{ #category : #accessing }
PicClip >> estimatedBounds [

	^ self estimatedChildrenBounds intersect: clipRect
]

Class {
	#name : #PicDrawRoundedRectangle,
	#superclass : #PicDrawRectangle,
	#instVars : [
		'radius'
	],
	#category : #'RenderThee-Pictures'
}

{ #category : #'instance creation' }
PicDrawRoundedRectangle class >> bounds: aRectangle radius: cornerRadius fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self new
		bounds: aRectangle;
		radius: cornerRadius;
		fillStyle: aFillStyle;
		borderStyle: aBorderStyle;
		yourself
]

{ #category : #drawing }
PicDrawRoundedRectangle >> drawOn: aCanvas [

	aCanvas
		frameAndFillRoundRect: bounds
		radius: radius
		fillStyle: fillStyle
		borderStyle: borderStyle
]

{ #category : #accessing }
PicDrawRoundedRectangle >> radius [

	^ radius
]

{ #category : #accessing }
PicDrawRoundedRectangle >> radius: anObject [

	radius := anObject.
]

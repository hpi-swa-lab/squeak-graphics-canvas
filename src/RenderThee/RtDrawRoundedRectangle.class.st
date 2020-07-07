Class {
	#name : #RtDrawRoundedRectangle,
	#superclass : #RtDrawRectangle,
	#instVars : [
		'radius'
	],
	#category : 'RenderThee-CanvasCommands'
}

{ #category : #'instance creation' }
RtDrawRoundedRectangle class >> bounds: aRectangle radius: cornerRadius fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self new
		bounds: aRectangle;
		radius: cornerRadius;
		fillStyle: aFillStyle;
		borderStyle: aBorderStyle;
		yourself
]

{ #category : #drawing }
RtDrawRoundedRectangle >> drawOn: aCanvas [

	aCanvas
		frameAndFillRoundRect: bounds
		radius: radius
		fillStyle: fillStyle
		borderStyle: borderStyle
]

{ #category : #accessing }
RtDrawRoundedRectangle >> radius [

	^ radius
]

{ #category : #accessing }
RtDrawRoundedRectangle >> radius: anObject [

	radius := anObject.
]

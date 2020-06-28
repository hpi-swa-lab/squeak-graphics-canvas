Class {
	#name : #RtDrawRoundedRectangle,
	#superclass : #RtDrawRectangle,
	#instVars : [
		'radius'
	],
	#category : 'RenderThee-Drawing'
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
		frameAndFillRoundRect: self bounds
		radius: self radius
		fillStyle: self fillStyle
		borderStyle: self borderStyle
]

{ #category : #accessing }
RtDrawRoundedRectangle >> radius [

	^ radius
]

{ #category : #accessing }
RtDrawRoundedRectangle >> radius: anObject [

	radius := anObject.
]

{ #category : #visiting }
RtDrawRoundedRectangle >> visit: aVisitor [

	^ aVisitor visitDrawRoundedRectangle: self
]

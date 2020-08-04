Class {
	#name : #RtDrawLayer,
	#superclass : #RtLayer,
	#instVars : [
		'picture'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'instance creation' }
RtDrawLayer class >> picture: aPicture [

	| bounds pic |
	bounds := aPicture estimatedBounds.
	pic := aPicture copy.
	pic transformBy: (Matrix2x3 withOffset: bounds topLeft negated).
	^ self new
		transform: (Matrix4x4 withOffset: bounds topLeft);
		extent: bounds extent;
		picture: pic;
		yourself
]

{ #category : #visiting }
RtDrawLayer >> accept: aVisitor [

	^ aVisitor visitDrawLayer: self
]

{ #category : #compositing }
RtDrawLayer >> drawOn: aCanvas [

	aCanvas drawDrawLayer: self
]

{ #category : #accessing }
RtDrawLayer >> picture [

	^ picture
]

{ #category : #accessing }
RtDrawLayer >> picture: anObject [

	picture := anObject
]

{ #category : #printing }
RtDrawLayer >> printOn: aStream [

	super printOn: aStream.
	aStream space; nextPut: $(.
	transform offset printOn: aStream.
	aStream nextPutAll: ' extent: '.
	extent printOn: aStream.
	aStream space; nextPut: $).
]

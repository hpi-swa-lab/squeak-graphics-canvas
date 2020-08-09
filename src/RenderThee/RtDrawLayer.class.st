"
A RtDrawLayer is a node of the layer tree that only contains drawing operations.

Instance Variables
	picture:		<Object>


"
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
		outerTransform: Matrix2x3 identity;
		bounds: bounds;
		picture: pic;
		yourself
]

{ #category : #visiting }
RtDrawLayer >> accept: aVisitor [

	^ aVisitor visitDrawLayer: self
]

{ #category : #compositing }
RtDrawLayer >> drawLayerOn: aCanvas [

	aCanvas drawDrawLayer: self
]

{ #category : #compositing }
RtDrawLayer >> drawOn: aCanvas [

	aCanvas draw: picture
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
	offset printOn: aStream.
	aStream nextPutAll: ' extent: '.
	extent printOn: aStream.
	aStream space; nextPut: $).
]

{ #category : #caching }
RtDrawLayer >> updateCacheFor: aCanvas [

	aCanvas updateDrawLayerCache: self
]

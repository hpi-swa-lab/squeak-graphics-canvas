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
	#category : #'RenderThee-LayerTree',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
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

{
	#category : #visiting,
	#timestamp : ''
}
RtDrawLayer >> accept: aVisitor [

	^ aVisitor visitDrawLayer: self
]

{
	#category : #compositing,
	#timestamp : ''
}
RtDrawLayer >> drawLayerOn: aCanvas [

	aCanvas drawDrawLayer: self
]

{
	#category : #compositing,
	#timestamp : ''
}
RtDrawLayer >> drawOn: aCanvas [

	aCanvas draw: picture
]

{
	#category : #accessing,
	#timestamp : ''
}
RtDrawLayer >> picture [

	^ picture
]

{
	#category : #accessing,
	#timestamp : ''
}
RtDrawLayer >> picture: anObject [

	picture := anObject
]

{
	#category : #printing,
	#timestamp : ''
}
RtDrawLayer >> printOn: aStream [

	super printOn: aStream.
	aStream space; nextPut: $(.
	offset printOn: aStream.
	aStream nextPutAll: ' extent: '.
	extent printOn: aStream.
	aStream space; nextPut: $).
]

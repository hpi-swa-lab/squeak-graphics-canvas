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
	#'squeak_changestamp' : ''
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
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
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtDrawLayer >> accept: aVisitor [

	^ aVisitor visitDrawLayer: self
]

{
	#category : #compositing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtDrawLayer >> drawLayerOn: aCanvas [

	aCanvas drawDrawLayer: self
]

{
	#category : #compositing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtDrawLayer >> drawOn: aCanvas [

	aCanvas draw: picture
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtDrawLayer >> picture [

	^ picture
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtDrawLayer >> picture: anObject [

	picture := anObject
]

{
	#category : #printing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtDrawLayer >> printOn: aStream [

	super printOn: aStream.
	aStream space; nextPut: $(.
	offset printOn: aStream.
	aStream nextPutAll: ' extent: '.
	extent printOn: aStream.
	aStream space; nextPut: $).
]

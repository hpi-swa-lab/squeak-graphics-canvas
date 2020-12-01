"
I clip the drawing of my children to a given rectangle.
My clipping rectangle is stored in local coordinates relative to the last transform of my parent chain.
"
Class {
	#name : #PicClip,
	#superclass : #PicGroup,
	#instVars : [
		'clipRect'
	],
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
PicClip class >> rect: aRectangle [

	^ self new
		clipRect: aRectangle;
		yourself
]

{
	#category : #accessing,
	#timestamp : ''
}
PicClip >> clipRect [

	^ clipRect
]

{
	#category : #accessing,
	#timestamp : ''
}
PicClip >> clipRect: anObject [

	clipRect := anObject
]

{
	#category : #drawing,
	#timestamp : ''
}
PicClip >> drawOn: aCanvas [

	aCanvas
		clipBy: clipRect
		during: [:c | super drawOn: c]
]

{
	#category : #accessing,
	#timestamp : ''
}
PicClip >> estimatedBounds [

	^ self estimatedChildrenBounds intersect: clipRect
]

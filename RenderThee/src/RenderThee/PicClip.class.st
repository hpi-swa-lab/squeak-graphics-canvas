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
	#commentStamp : 'stlu 8/21/2020 12:59'
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicClip class >> rect: aRectangle [

	^ self new
		clipRect: aRectangle;
		yourself
]

{
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:06'
}
PicClip >> acceptVisitor: aVisitor [

	aVisitor visitClip: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicClip >> clipRect [

	^ clipRect
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicClip >> clipRect: anObject [

	clipRect := anObject
]

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicClip >> drawOn: aCanvas [

	aCanvas
		clipBy: clipRect
		during: [:c | super drawOn: c]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicClip >> estimatedBounds [

	^ self estimatedChildrenBounds intersect: clipRect
]

{
	#category : #testing,
	#timestamp : 'stlu 3/18/2021 13:49'
}
PicClip >> isClip [

	^ true
]

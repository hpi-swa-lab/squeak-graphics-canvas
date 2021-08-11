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
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicClip class >> rect: aRectangle [

	^ self new
		clipRect: aRectangle;
		yourself
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:06'
}
PicClip >> acceptVisitor: aVisitor [

	aVisitor visitClip: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicClip >> clipRect [

	^ clipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicClip >> clipRect: anObject [

	clipRect := anObject
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicClip >> drawOn: aCanvas [

	aCanvas
		clipBy: clipRect
		during: [:c | super drawOn: c]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:46'
}
PicClip >> estimatedBounds [

	^ super estimatedBounds ifNotNil: [:bounds |
		bounds intersect: clipRect]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:49'
}
PicClip >> isClip [

	^ true
]

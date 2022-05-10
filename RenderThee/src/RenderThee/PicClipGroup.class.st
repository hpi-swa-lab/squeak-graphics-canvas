"
I clip the drawing of my children to a given rectangle.
My clipping rectangle is stored in local coordinates relative to the last transform of my parent chain.
"
Class {
	#name : #PicClipGroup,
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
PicClipGroup class >> rect: aRectangle [

	^ self new
		clipRect: aRectangle;
		yourself
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:06'
}
PicClipGroup >> acceptVisitor: aVisitor [

	aVisitor visitClip: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicClipGroup >> clipRect [

	^ clipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicClipGroup >> clipRect: anObject [

	clipRect := anObject
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicClipGroup >> drawOn: aCanvas [

	aCanvas
		clipBy: clipRect
		during: [:c | super drawOn: c]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:46'
}
PicClipGroup >> estimatedBounds [

	^ super estimatedBounds ifNotNil: [:bounds |
		bounds intersect: clipRect]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:00'
}
PicClipGroup >> isClipNode [

	^ true
]

Class {
	#name : #PicClipBegin,
	#superclass : #PicGroupBegin,
	#instVars : [
		'clipRect'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 5/13/2022 15:10'
}
PicClipBegin class >> clipRect: aRectangle [

	^ self new clipRect: aRectangle
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:06'
}
PicClipBegin >> acceptVisitor: aVisitor [

	^ aVisitor visitClipBegin: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/13/2022 15:09'
}
PicClipBegin >> clipRect [

	^ clipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/13/2022 15:09'
}
PicClipBegin >> clipRect: anObject [

	clipRect := anObject.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:01'
}
PicClipBegin >> renderOn: aRenderer [

	^ aRenderer pushClip: self
]

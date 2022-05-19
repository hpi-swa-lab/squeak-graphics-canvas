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
	#'squeak_changestamp' : 'stlu 5/19/2022 14:43'
}
PicClipBegin >> clipRect: aRectangle [

	clipRect rectangle: aRectangle.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:41'
}
PicClipBegin >> endClass [

	^ PicClipEnd
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:45'
}
PicClipBegin >> initialize [

	super initialize.
	clipRect := PicRectangle new.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:52'
}
PicClipBegin >> pool [

	^ ClipBeginPool
]

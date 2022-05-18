Class {
	#name : #PicClipEnd,
	#superclass : #PicGroupEnd,
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:05'
}
PicClipEnd >> acceptVisitor: aVisitor [

	^ aVisitor visitClipEnd: self
]

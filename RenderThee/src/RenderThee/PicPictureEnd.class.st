Class {
	#name : #PicPictureEnd,
	#superclass : #PicGroupEnd,
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:05'
}
PicPictureEnd >> acceptVisitor: aVisitor [

	^ aVisitor visitPictureEnd: self
]

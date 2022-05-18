Class {
	#name : #PicTranslationEnd,
	#superclass : #PicGroupEnd,
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:05'
}
PicTranslationEnd >> acceptVisitor: aVisitor [

	^ aVisitor visitTranslationEnd: self
]

Class {
	#name : #PicTranslationBegin,
	#superclass : #PicGroupBegin,
	#instVars : [
		'translation'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 5/16/2022 16:48'
}
PicTranslationBegin class >> translation: aPoint [

	^ self new translation: aPoint
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:04'
}
PicTranslationBegin >> acceptVisitor: aVisitor [

	^ aVisitor visitTranslationBegin: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:41'
}
PicTranslationBegin >> endClass [

	^ PicTranslationEnd
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:52'
}
PicTranslationBegin >> pool [

	^ TranslationBeginPool
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:48'
}
PicTranslationBegin >> translation [

	^ translation
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:48'
}
PicTranslationBegin >> translation: anObject [

	translation := anObject.
]

Class {
	#name : #PicParagraphPrim,
	#superclass : #PicGraphicsPrim,
	#instVars : [
		'color',
		'paragraph'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 5/16/2022 16:06'
}
PicParagraphPrim >> acceptVisitor: aVisitor [

	^ aVisitor visitParagraph: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicParagraphPrim >> color [

	^ color
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicParagraphPrim >> color: anObject [

	color := anObject.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/16/2022 17:10'
}
PicParagraphPrim >> drawOn: aCanvas [

	aCanvas
		paragraph: paragraph
		bounds: bounds
		color: color.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicParagraphPrim >> estimatedBounds [

	^ bounds
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 8/13/2021 13:14'
}
PicParagraphPrim >> isTranslucent [

	^ color isTranslucent
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:07'
}
PicParagraphPrim >> isTransparent [

	^ color isTransparent
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicParagraphPrim >> paragraph [

	^ paragraph
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicParagraphPrim >> paragraph: anObject [

	paragraph := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/19/2022 14:50'
}
PicParagraphPrim >> pool [

	^ ParagraphPrimPool
]

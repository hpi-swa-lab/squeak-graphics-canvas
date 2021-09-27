Class {
	#name : #PicLineNode,
	#superclass : #PicPrimitiveNode,
	#instVars : [
		'from',
		'to',
		'width',
		'color'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:04'
}
PicLineNode >> acceptVisitor: aVisitor [

	aVisitor visitLine: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicLineNode >> color [

	^ color
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicLineNode >> color: anObject [

	color := anObject.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicLineNode >> drawOn: aCanvas [

	aCanvas
		line: from
		to: to
		width: width
		color: color
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicLineNode >> estimatedBounds [

	^ from rect: to
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicLineNode >> from [

	^ from
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicLineNode >> from: anObject [

	from := anObject.
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 8/13/2021 13:13'
}
PicLineNode >> isTranslucent [

	^ color isTranslucent
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:06'
}
PicLineNode >> isTransparent [

	^ color isTransparent or: [width isZero]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicLineNode >> to [

	^ to
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicLineNode >> to: anObject [

	to := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicLineNode >> width [

	^ width
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicLineNode >> width: anObject [

	width := anObject.
]

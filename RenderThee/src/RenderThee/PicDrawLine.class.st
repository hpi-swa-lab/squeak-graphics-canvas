Class {
	#name : #PicDrawLine,
	#superclass : #PicDraw,
	#instVars : [
		'from',
		'to',
		'width',
		'color'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawLine class >> from: from to: to width: width color: color [

	^ self new
		from: from;
		to: to;
		width: width;
		color: color;
		yourself
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:04'
}
PicDrawLine >> acceptVisitor: aVisitor [

	aVisitor visitLine: self
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> color [

	^ color
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> color: anObject [

	color := anObject.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> drawOn: aCanvas [

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
PicDrawLine >> estimatedBounds [

	^ from rect: to
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> from [

	^ from
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> from: anObject [

	from := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> to [

	^ to
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> to: anObject [

	to := anObject.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> width [

	^ width
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> width: anObject [

	width := anObject.
]

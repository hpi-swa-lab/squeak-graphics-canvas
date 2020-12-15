Class {
	#name : #PicDrawLine,
	#superclass : #PicDraw,
	#instVars : [
		'from',
		'to',
		'width',
		'color'
	],
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/13/2020 18:20'
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
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> color [

	^ color
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> color: anObject [

	color := anObject.
]

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 18:20'
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
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> estimatedBounds [

	^ from rect: to
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> from [

	^ from
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> from: anObject [

	from := anObject.
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> to [

	^ to
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> to: anObject [

	to := anObject.
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> width [

	^ width
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawLine >> width: anObject [

	width := anObject.
]

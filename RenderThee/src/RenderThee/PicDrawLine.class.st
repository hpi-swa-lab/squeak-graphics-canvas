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
	#timestamp : ''
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
	#timestamp : ''
}
PicDrawLine >> color [

	^ color
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawLine >> color: anObject [

	color := anObject.
]

{
	#category : #drawing,
	#timestamp : ''
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
	#timestamp : ''
}
PicDrawLine >> estimatedBounds [

	^ from rect: to
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawLine >> from [

	^ from
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawLine >> from: anObject [

	from := anObject.
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawLine >> to [

	^ to
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawLine >> to: anObject [

	to := anObject.
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawLine >> width [

	^ width
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawLine >> width: anObject [

	width := anObject.
]

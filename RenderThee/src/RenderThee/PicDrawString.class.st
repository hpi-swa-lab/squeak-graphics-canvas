Class {
	#name : #PicDrawString,
	#superclass : #PicDraw,
	#instVars : [
		'contents',
		'from',
		'to',
		'bounds',
		'font',
		'color'
	],
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
PicDrawString class >> contents: aString from: startIndex to: stopIndex in: boundsRect font: fontOrNil color: aColor [

	^ self new
		contents: aString;
		from: startIndex;
		to: stopIndex;
		bounds: boundsRect;
		font: fontOrNil;
		color: aColor;
		yourself
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawString >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawString >> bounds: anObject [

	bounds := anObject.
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawString >> color [

	^ color
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawString >> color: anObject [

	color := anObject.
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawString >> contents [

	^ contents
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawString >> contents: anObject [

	contents := anObject.
]

{
	#category : #drawing,
	#timestamp : ''
}
PicDrawString >> drawOn: aCanvas [

	aCanvas
		drawString: contents
		from: from
		to: to
		in: bounds
		font: font
		color: color
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawString >> estimatedBounds [

	^ bounds
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawString >> font [

	^ font
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawString >> font: anObject [

	font := anObject.
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawString >> from [

	^ from
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawString >> from: anObject [

	from := anObject.
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawString >> to [

	^ to
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawString >> to: anObject [

	to := anObject.
]

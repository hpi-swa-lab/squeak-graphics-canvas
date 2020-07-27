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

{ #category : #'instance creation' }
PicDrawLine class >> from: from to: to width: width color: color [

	^ self new
		from: from;
		to: to;
		width: width;
		color: color;
		yourself
]

{ #category : #accessing }
PicDrawLine >> color [

	^ color
]

{ #category : #accessing }
PicDrawLine >> color: anObject [

	color := anObject.
]

{ #category : #drawing }
PicDrawLine >> drawOn: aCanvas [

	aCanvas
		line: from
		to: to
		width: width
		color: color
]

{ #category : #accessing }
PicDrawLine >> estimatedBounds [

	^ from rect: to
]

{ #category : #accessing }
PicDrawLine >> from [

	^ from
]

{ #category : #accessing }
PicDrawLine >> from: anObject [

	from := anObject.
]

{ #category : #accessing }
PicDrawLine >> to [

	^ to
]

{ #category : #accessing }
PicDrawLine >> to: anObject [

	to := anObject.
]

{ #category : #accessing }
PicDrawLine >> width [

	^ width
]

{ #category : #accessing }
PicDrawLine >> width: anObject [

	width := anObject.
]

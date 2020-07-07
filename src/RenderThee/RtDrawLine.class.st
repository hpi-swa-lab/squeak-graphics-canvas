Class {
	#name : #RtDrawLine,
	#superclass : #RtDrawCommand,
	#instVars : [
		'from',
		'to',
		'width',
		'color'
	],
	#category : 'RenderThee-CanvasCommands'
}

{ #category : #'instance creation' }
RtDrawLine class >> from: from to: to width: width color: color [

	^ self new
		from: from;
		to: to;
		width: width;
		color: color;
		yourself
]

{ #category : #accessing }
RtDrawLine >> color [

	^ color
]

{ #category : #accessing }
RtDrawLine >> color: anObject [

	color := anObject.
]

{ #category : #drawing }
RtDrawLine >> drawOn: aCanvas [

	aCanvas
		line: from
		to: to
		width: width
		color: color
]

{ #category : #accessing }
RtDrawLine >> from [

	^ from
]

{ #category : #accessing }
RtDrawLine >> from: anObject [

	from := anObject.
]

{ #category : #accessing }
RtDrawLine >> to [

	^ to
]

{ #category : #accessing }
RtDrawLine >> to: anObject [

	to := anObject.
]

{ #category : #accessing }
RtDrawLine >> width [

	^ width
]

{ #category : #accessing }
RtDrawLine >> width: anObject [

	width := anObject.
]

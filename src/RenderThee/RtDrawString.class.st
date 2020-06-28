Class {
	#name : #RtDrawString,
	#superclass : #RtDrawCommand,
	#instVars : [
		'contents',
		'from',
		'to',
		'bounds',
		'font',
		'color'
	],
	#category : 'RenderThee-Drawing'
}

{ #category : #'instance creation' }
RtDrawString class >> contents: aString from: startIndex to: stopIndex in: boundsRect font: fontOrNil color: aColor [

	^ self new
		contents: aString;
		from: startIndex;
		to: stopIndex;
		bounds: boundsRect;
		font: fontOrNil;
		color: aColor;
		yourself
]

{ #category : #accessing }
RtDrawString >> bounds [

	^ bounds
]

{ #category : #accessing }
RtDrawString >> bounds: anObject [

	bounds := anObject.
]

{ #category : #accessing }
RtDrawString >> color [

	^ color
]

{ #category : #accessing }
RtDrawString >> color: anObject [

	color := anObject.
]

{ #category : #accessing }
RtDrawString >> contents [

	^ contents
]

{ #category : #accessing }
RtDrawString >> contents: anObject [

	contents := anObject.
]

{ #category : #drawing }
RtDrawString >> drawOn: aCanvas [

	aCanvas
		drawString: self contents
		from: self from
		to: self to
		in: self bounds
		font: self font
		color: self color
]

{ #category : #accessing }
RtDrawString >> font [

	^ font
]

{ #category : #accessing }
RtDrawString >> font: anObject [

	font := anObject.
]

{ #category : #accessing }
RtDrawString >> from [

	^ from
]

{ #category : #accessing }
RtDrawString >> from: anObject [

	from := anObject.
]

{ #category : #accessing }
RtDrawString >> to [

	^ to
]

{ #category : #accessing }
RtDrawString >> to: anObject [

	to := anObject.
]

{ #category : #visiting }
RtDrawString >> visit: aVisitor [

	^ aVisitor visitDrawString: self
]

Class {
	#name : #RtDrawShape,
	#superclass : #RtDrawCommand,
	#instVars : [
		'bounds',
		'fillStyle',
		'borderStyle'
	],
	#category : 'RenderThee-CanvasCommands'
}

{ #category : #'instance creation' }
RtDrawShape class >> bounds: aRectangle borderStyle: aBorderStyle [

	^ self
		bounds: aRectangle
		fillStyle: (SolidFillStyle color: Color transparent)
		borderStyle: aBorderStyle
]

{ #category : #'instance creation' }
RtDrawShape class >> bounds: aRectangle fillStyle: aFillStyle [

	^ self
		bounds: aRectangle
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: 0)
]

{ #category : #'instance creation' }
RtDrawShape class >> bounds: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self new
		bounds: aRectangle;
		fillStyle: aFillStyle;
		borderStyle: aBorderStyle;
		yourself
]

{ #category : #accessing }
RtDrawShape >> borderStyle [

	^ borderStyle
]

{ #category : #accessing }
RtDrawShape >> borderStyle: anObject [

	borderStyle := anObject.
]

{ #category : #accessing }
RtDrawShape >> bounds [

	^ bounds
]

{ #category : #accessing }
RtDrawShape >> bounds: anObject [

	bounds := anObject.
]

{ #category : #accessing }
RtDrawShape >> fillStyle [

	^ fillStyle
]

{ #category : #accessing }
RtDrawShape >> fillStyle: anObject [

	fillStyle := anObject.
]

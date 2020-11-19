Class {
	#name : #PicDrawShape,
	#superclass : #PicDraw,
	#instVars : [
		'bounds',
		'fillStyle',
		'borderStyle'
	],
	#category : #'RenderThee-Pictures'
}

{ #category : #'instance creation' }
PicDrawShape class >> bounds: aRectangle borderStyle: aBorderStyle [

	^ self
		bounds: aRectangle
		fillStyle: (SolidFillStyle color: Color transparent)
		borderStyle: aBorderStyle
]

{ #category : #'instance creation' }
PicDrawShape class >> bounds: aRectangle fillStyle: aFillStyle [

	^ self
		bounds: aRectangle
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: 0)
]

{ #category : #'instance creation' }
PicDrawShape class >> bounds: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self new
		bounds: aRectangle;
		fillStyle: aFillStyle;
		borderStyle: aBorderStyle;
		yourself
]

{ #category : #accessing }
PicDrawShape >> borderStyle [

	^ borderStyle
]

{ #category : #accessing }
PicDrawShape >> borderStyle: anObject [

	borderStyle := anObject.
]

{ #category : #accessing }
PicDrawShape >> bounds [

	^ bounds
]

{ #category : #accessing }
PicDrawShape >> bounds: anObject [

	bounds := anObject.
]

{ #category : #accessing }
PicDrawShape >> estimatedBounds [

	^ bounds
]

{ #category : #accessing }
PicDrawShape >> fillStyle [

	^ fillStyle
]

{ #category : #accessing }
PicDrawShape >> fillStyle: anObject [

	fillStyle := anObject.
]

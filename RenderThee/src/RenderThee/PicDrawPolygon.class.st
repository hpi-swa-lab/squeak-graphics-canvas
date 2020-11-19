Class {
	#name : #PicDrawPolygon,
	#superclass : #PicDrawShape,
	#instVars : [
		'vertices'
	],
	#category : #'RenderThee-Pictures'
}

{ #category : #'instance creation' }
PicDrawPolygon class >> vertices: collectionOfPoints fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self new
		vertices: collectionOfPoints;
		fillStyle: aFillStyle;
		borderStyle: aBorderStyle;
		yourself
]

{ #category : #drawing }
PicDrawPolygon >> drawOn: aCanvas [

	aCanvas
		drawPolygon: vertices
		fillStyle: fillStyle
		borderWidth: borderStyle width
		borderColor: borderStyle color
]

{ #category : #accessing }
PicDrawPolygon >> estimatedBounds [

	^ Rectangle encompassing: vertices
]

{ #category : #accessing }
PicDrawPolygon >> vertices [

	^ vertices
]

{ #category : #accessing }
PicDrawPolygon >> vertices: anObject [

	vertices := anObject.
]

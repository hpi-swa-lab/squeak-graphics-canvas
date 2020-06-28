Class {
	#name : #RtDrawPolygon,
	#superclass : #RtDrawShape,
	#instVars : [
		'vertices'
	],
	#category : 'RenderThee-Drawing'
}

{ #category : #'instance creation' }
RtDrawPolygon class >> vertices: collectionOfPoints fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self new
		vertices: collectionOfPoints;
		fillStyle: aFillStyle;
		borderStyle: aBorderStyle;
		yourself
]

{ #category : #drawing }
RtDrawPolygon >> drawOn: aCanvas [

	aCanvas
		drawPolygon: self vertices
		fillStyle: self fillStyle
		borderWidth: self borderStyle width
		borderColor: self borderStyle color
]

{ #category : #accessing }
RtDrawPolygon >> vertices [

	^ vertices
]

{ #category : #accessing }
RtDrawPolygon >> vertices: anObject [

	vertices := anObject.
]

{ #category : #visiting }
RtDrawPolygon >> visit: aVisitor [

	^ aVisitor visitDrawPolygon: self
]

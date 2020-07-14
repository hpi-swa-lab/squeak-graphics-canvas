Class {
	#name : #RtDrawPolygon,
	#superclass : #RtDrawShape,
	#instVars : [
		'vertices'
	],
	#category : 'RenderThee-CanvasCommands'
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
		drawPolygon: vertices
		fillStyle: fillStyle
		borderWidth: borderStyle width
		borderColor: borderStyle color
]

{ #category : #accessing }
RtDrawPolygon >> vertices [

	^ vertices
]

{ #category : #accessing }
RtDrawPolygon >> vertices: anObject [

	vertices := anObject.
]

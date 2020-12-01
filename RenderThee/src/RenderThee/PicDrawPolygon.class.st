Class {
	#name : #PicDrawPolygon,
	#superclass : #PicDrawShape,
	#instVars : [
		'vertices'
	],
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
PicDrawPolygon class >> vertices: collectionOfPoints fillStyle: aFillStyle borderStyle: aBorderStyle [

	^ self new
		vertices: collectionOfPoints;
		fillStyle: aFillStyle;
		borderStyle: aBorderStyle;
		yourself
]

{
	#category : #drawing,
	#timestamp : ''
}
PicDrawPolygon >> drawOn: aCanvas [

	aCanvas
		drawPolygon: vertices
		fillStyle: fillStyle
		borderWidth: borderStyle width
		borderColor: borderStyle color
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawPolygon >> estimatedBounds [

	^ Rectangle encompassing: vertices
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawPolygon >> vertices [

	^ vertices
]

{
	#category : #accessing,
	#timestamp : ''
}
PicDrawPolygon >> vertices: anObject [

	vertices := anObject.
]

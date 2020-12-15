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
	#timestamp : 'stlu 11/13/2020 18:20'
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
	#timestamp : 'stlu 11/13/2020 18:20'
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
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawPolygon >> estimatedBounds [

	^ Rectangle encompassing: vertices
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawPolygon >> vertices [

	^ vertices
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicDrawPolygon >> vertices: anObject [

	vertices := anObject.
]

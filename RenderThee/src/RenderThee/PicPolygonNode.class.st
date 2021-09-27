Class {
	#name : #PicPolygonNode,
	#superclass : #PicShapeNode,
	#instVars : [
		'vertices'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:05'
}
PicPolygonNode >> acceptVisitor: aVisitor [

	aVisitor visitPolygon: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPolygonNode >> drawOn: aCanvas [

	aCanvas
		drawPolygon: vertices
		fillStyle: fillStyle
		borderWidth: borderStyle width
		borderColor: borderStyle color
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPolygonNode >> estimatedBounds [

	^ Rectangle encompassing: vertices
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPolygonNode >> vertices [

	^ vertices
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPolygonNode >> vertices: anObject [

	vertices := anObject.
]

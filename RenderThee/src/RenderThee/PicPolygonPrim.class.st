Class {
	#name : #PicPolygonPrim,
	#superclass : #PicShapePrim,
	#instVars : [
		'vertices'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:05'
}
PicPolygonPrim >> acceptVisitor: aVisitor [

	aVisitor visitPolygon: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPolygonPrim >> drawOn: aCanvas [

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
PicPolygonPrim >> estimatedBounds [

	^ Rectangle encompassing: vertices
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPolygonPrim >> vertices [

	^ vertices
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPolygonPrim >> vertices: anObject [

	vertices := anObject.
]

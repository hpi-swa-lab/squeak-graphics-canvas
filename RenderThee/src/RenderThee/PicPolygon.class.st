Class {
	#name : #PicPolygon,
	#superclass : #PicShape,
	#instVars : [
		'vertices'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:05'
}
PicPolygon >> acceptVisitor: aVisitor [

	aVisitor visitPolygon: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPolygon >> drawOn: aCanvas [

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
PicPolygon >> estimatedBounds [

	^ Rectangle encompassing: vertices
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPolygon >> vertices [

	^ vertices
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicPolygon >> vertices: anObject [

	vertices := anObject.
]

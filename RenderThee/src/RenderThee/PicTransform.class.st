"
I apply a matrix transform to the drawing of all of my children.
The stored transform is a `Matrix2x3`.
"
Class {
	#name : #PicTransform,
	#superclass : #PicGroup,
	#instVars : [
		'matrix'
	],
	#category : #'RenderThee-Pictures',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
PicTransform class >> matrix: aMatrix2x3 [

	^ self new
		matrix: aMatrix2x3;
		yourself
]

{
	#category : #drawing,
	#timestamp : ''
}
PicTransform >> drawOn: aCanvas [

	aCanvas
		transformBy: matrix
		during: [:c | super drawOn: c]
]

{
	#category : #accessing,
	#timestamp : ''
}
PicTransform >> estimatedBounds [

	^ matrix localBoundsToGlobal: self estimatedChildrenBounds
]

{
	#category : #accessing,
	#timestamp : ''
}
PicTransform >> matrix [
	^ matrix
]

{
	#category : #accessing,
	#timestamp : ''
}
PicTransform >> matrix: anObject [
	matrix := anObject
]

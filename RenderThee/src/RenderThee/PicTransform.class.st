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
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicTransform class >> matrix: aMatrix2x3 [

	^ self new
		matrix: aMatrix2x3;
		yourself
]

{
	#category : #drawing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicTransform >> drawOn: aCanvas [

	aCanvas
		transformBy: matrix
		during: [:c | super drawOn: c]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicTransform >> estimatedBounds [

	^ matrix localBoundsToGlobal: self estimatedChildrenBounds
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicTransform >> matrix [
	^ matrix
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
PicTransform >> matrix: anObject [
	matrix := anObject
]

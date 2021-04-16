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
	#commentStamp : 'stlu 8/21/2020 13:12'
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
	#category : #visiting,
	#timestamp : 'stlu 3/18/2021 13:06'
}
PicTransform >> acceptVisitor: aVisitor [

	aVisitor visitTransform: self
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
	#category : #testing,
	#timestamp : 'stlu 3/18/2021 13:48'
}
PicTransform >> isTransform [

	^ true
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

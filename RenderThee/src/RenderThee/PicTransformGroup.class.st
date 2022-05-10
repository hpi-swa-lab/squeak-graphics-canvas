"
I apply a matrix transform to the drawing of all of my children.
The stored transform is a `Matrix2x3`.
"
Class {
	#name : #PicTransformGroup,
	#superclass : #PicGroup,
	#instVars : [
		'matrix'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTransformGroup class >> matrix: aMatrix2x3 [

	^ self new
		matrix: aMatrix2x3;
		yourself
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:06'
}
PicTransformGroup >> acceptVisitor: aVisitor [

	aVisitor visitTransform: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTransformGroup >> drawOn: aCanvas [

	aCanvas
		transformBy: matrix
		during: [:c | super drawOn: c]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:45'
}
PicTransformGroup >> estimatedBounds [

	^ super estimatedBounds ifNotNil: [:bounds |
		matrix localBoundsToGlobal: bounds]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:00'
}
PicTransformGroup >> isTransformNode [

	^ true
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTransformGroup >> matrix [
	^ matrix
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTransformGroup >> matrix: anObject [
	matrix := anObject
]

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
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTransform class >> matrix: aMatrix2x3 [

	^ self new
		matrix: aMatrix2x3;
		yourself
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:06'
}
PicTransform >> acceptVisitor: aVisitor [

	aVisitor visitTransform: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTransform >> drawOn: aCanvas [

	aCanvas
		transformBy: matrix
		during: [:c | super drawOn: c]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTransform >> estimatedBounds [

	^ matrix localBoundsToGlobal: self estimatedChildrenBounds
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:48'
}
PicTransform >> isTransform [

	^ true
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTransform >> matrix [
	^ matrix
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTransform >> matrix: anObject [
	matrix := anObject
]

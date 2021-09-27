"
I apply a matrix transform to the drawing of all of my children.
The stored transform is a `Matrix2x3`.
"
Class {
	#name : #PicTransformNode,
	#superclass : #PicGroupNode,
	#instVars : [
		'matrix'
	],
	#category : #'RenderThee-Pictures'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTransformNode class >> matrix: aMatrix2x3 [

	^ self new
		matrix: aMatrix2x3;
		yourself
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 3/18/2021 13:06'
}
PicTransformNode >> acceptVisitor: aVisitor [

	aVisitor visitTransform: self
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTransformNode >> drawOn: aCanvas [

	aCanvas
		transformBy: matrix
		during: [:c | super drawOn: c]
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/11/2021 11:45'
}
PicTransformNode >> estimatedBounds [

	^ super estimatedBounds ifNotNil: [:bounds |
		matrix localBoundsToGlobal: bounds]
]

{
	#category : #testing,
	#'squeak_changestamp' : 'stlu 9/27/2021 13:00'
}
PicTransformNode >> isTransformNode [

	^ true
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTransformNode >> matrix [
	^ matrix
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
PicTransformNode >> matrix: anObject [
	matrix := anObject
]

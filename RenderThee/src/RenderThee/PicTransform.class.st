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

{ #category : #'instance creation' }
PicTransform class >> matrix: aMatrix2x3 [

	^ self new
		matrix: aMatrix2x3;
		yourself
]

{ #category : #drawing }
PicTransform >> drawOn: aCanvas [

	aCanvas
		transformBy: matrix
		during: [:c | super drawOn: c]
]

{ #category : #accessing }
PicTransform >> estimatedBounds [

	^ matrix localBoundsToGlobal: self estimatedChildrenBounds
]

{ #category : #accessing }
PicTransform >> matrix [
	^ matrix
]

{ #category : #accessing }
PicTransform >> matrix: anObject [
	matrix := anObject
]

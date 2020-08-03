Class {
	#name : #Matrix2x3,
	#superclass : #Object,
	#instVars : [
		'a11',
		'a12',
		'a13',
		'a21',
		'a22',
		'a23'
	],
	#classVars : [
		'Identity',
		'Zero'
	],
	#category : #'RenderThee-Core'
}

{ #category : #'instance creation' }
Matrix2x3 class >> identity [

	^ Identity shallowCopy
]

{ #category : #'class initialization' }
Matrix2x3 class >> initialize [

	Identity := self basicNew setIdentity.
	Zero := self basicNew setZero
]

{ #category : #'instance creation' }
Matrix2x3 class >> new [

	^ self zero
]

{ #category : #'instance creation' }
Matrix2x3 class >> withAngle: degrees [

	^ self new setAngle: degrees
]

{ #category : #'instance creation' }
Matrix2x3 class >> withOffset: aScalar [

	^ self identity setOffset: aScalar
]

{ #category : #'instance creation' }
Matrix2x3 class >> withRotation: degrees [

	^ self new setAngle: degrees
]

{ #category : #'instance creation' }
Matrix2x3 class >> zero [

	^ Zero shallowCopy
]

{ #category : #accessing }
Matrix2x3 >> a11 [

	^ a11
]

{ #category : #accessing }
Matrix2x3 >> a11: anObject [

	a11 := anObject
]

{ #category : #accessing }
Matrix2x3 >> a12 [

	^ a12
]

{ #category : #accessing }
Matrix2x3 >> a12: anObject [

	a12 := anObject
]

{ #category : #accessing }
Matrix2x3 >> a13 [

	^ a13
]

{ #category : #accessing }
Matrix2x3 >> a13: anObject [

	a13 := anObject
]

{ #category : #accessing }
Matrix2x3 >> a21 [

	^ a21
]

{ #category : #accessing }
Matrix2x3 >> a21: anObject [

	a21 := anObject
]

{ #category : #accessing }
Matrix2x3 >> a22 [

	^ a22
]

{ #category : #accessing }
Matrix2x3 >> a22: anObject [

	a22 := anObject
]

{ #category : #accessing }
Matrix2x3 >> a23 [

	^ a23
]

{ #category : #accessing }
Matrix2x3 >> a23: anObject [

	a23 := anObject
]

{ #category : #converting }
Matrix2x3 >> asMatrixTransform2x3 [

	^ self
]

{ #category : #composing }
Matrix2x3 >> composeWithLocal: aMatrix2x3 [
	"Compose the receiver with the local transformation passed in."
	| b11 b12 b13 b21 b22 b23 tmp |
	b11 := aMatrix2x3 a11.
	b12 := aMatrix2x3 a12.
	b13 := aMatrix2x3 a13.
	b21 := aMatrix2x3 a21.
	b22 := aMatrix2x3 a22.
	b23 := aMatrix2x3 a23.
	a13 := a13 + (a11 * b13) + (a12 * b23).
	a23 := a23 + (a21 * b13) + (a22 * b23).
	tmp := a11.
	a11 := (a11 * b11) + (a12 * b21).
	a12 := (tmp * b12) + (a12 * b22).
	tmp := a21.
	a21 := (a21 * b11) + (a22 * b21).
	a22 := (tmp * b12) + (a22 * b22)
	
]

{ #category : #composing }
Matrix2x3 >> composedWithLocal: aTransformation [
	"Return the composition of the receiver and the local transformation passed in"
	^ self shallowCopy composeWithLocal: aTransformation asMatrixTransform2x3
]

{ #category : #composing }
Matrix2x3 >> composedWithLocal: aMatrix2x3 into: result [
	"Return the composition of the receiver and the local transformation passed in.
	Store the composed matrix into result."
	| b11 b12 b13 b21 b22 b23 |
	b11 := aMatrix2x3 a11.
	b12 := aMatrix2x3 a12.
	b13 := aMatrix2x3 a13.
	b21 := aMatrix2x3 a21.
	b22 := aMatrix2x3 a22.
	b23 := aMatrix2x3 a23.
	result a11: (a11 * b11) + (a12 * b21).
	result a12: (a11 * b12) + (a12 * b22).
	result a13: a13 + (a11 * b13) + (a12 * b23).
	result a21: (a21 * b11) + (a22 * b21).
	result a22: (a21 * b12) + (a22 * b22).
	result a23: a23 + (a21 * b13) + (a22 * b23).
	^ result
]

{ #category : #transforming }
Matrix2x3 >> globalPointToLocal: aPoint [
	"Transform aPoint from global coordinates into local coordinates"
	| x y det detX detY |
	x := aPoint x asFloat - a13.
	y := aPoint y asFloat - a23.
	det := (a11 * a22) - (a12 * a21).
	det = 0.0 ifTrue: [^ 0.0@0.0]. "So we have at least a valid result"
	det := 1.0 / det.
	detX := (x * a22) - (a12 * y).
	detY := (a11 * y) - (x * a21).
	^ (detX * det) @ (detY * det)
]

{ #category : #transforming }
Matrix2x3 >> localPointToGlobal: aPoint [
	"Transform aPoint from local coordinates into global coordinates"
	| x y |
	x := (aPoint x * a11) + (aPoint y * a12) + a13.
	y := (aPoint x * a21) + (aPoint y * a22) + a23.
	^ x @ y
]

{ #category : #printing }
Matrix2x3 >> printOn: aStream [

	aStream
		nextPutAll: self class name;
		nextPut: $(;
		print: a11; tab; print: a12; tab; print: a13;
		cr; print: a21; tab; print: a22; tab; print: a23;
		nextPut:$).
]

{ #category : #private }
Matrix2x3 >> setAngle: degrees [
	"Set the raw rotation angle in the receiver"
	| rad s c |
	rad := degrees degreesToRadians.
	s := rad sin.
	c := rad cos.
	a11 := c. a12 := s negated.
	a21 := s. a22 := c
]

{ #category : #private }
Matrix2x3 >> setIdentity [

	a11 := 1.0. a12 := 0.0. a13 := 0.0.
	a21 := 0.0. a22 := 1.0. a23 := 0.0
]

{ #category : #private }
Matrix2x3 >> setOffset: aScalar [
	"Set the raw offset in the receiver"
	| pt |
	pt := aScalar asPoint.
	a13 := pt x asFloat.
	a23 := pt y asFloat
]

{ #category : #private }
Matrix2x3 >> setScale: aScalar [
	"Set the raw scale in the receiver"
	| pt |
	pt := aScalar asPoint.
	a11 := pt x asFloat.
	a22 := pt y asFloat
]

{ #category : #private }
Matrix2x3 >> setZero [

	a11 := 0.0. a12 := 0.0. a13 := 0.0.
	a21 := 0.0. a22 := 0.0. a23 := 0.0
]

"
I am an array of Matrices.
"
Class {
	#name : #MatrixArray,
	#superclass : #VectorArray,
	#type : #words,
	#category : '3DTransform-Arrays'
}

{ #category : #'as yet unclassified' }
MatrixArray >> size [
	"Return the number of primitive vertices that can be stored in the receiver"
	^self basicSize // self contentsSize
]

"
I am an array of Quaternions.
"
Class {
	#name : #VectorRotationArray,
	#superclass : #VectorArray,
	#type : #words,
	#category : #'3DTransform-Arrays'
}

{ #category : #'instance creation' }
VectorRotationArray class >> contentsClass [
	^Quaternion
]

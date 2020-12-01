"
I am an array of Quaternions.
"
Class {
	#name : #VectorRotationArray,
	#superclass : #VectorArray,
	#type : #words,
	#category : #'3DTransform-Arrays',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
VectorRotationArray class >> contentsClass [
	^Quaternion
]

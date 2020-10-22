Class {
	#name : #GLBuffer,
	#superclass : #GLObject,
	#category : #'OpenGL-Buffers'
}

{ #category : #destruction }
GLBuffer >> delete [ 
	self subclassResponsibility 
]

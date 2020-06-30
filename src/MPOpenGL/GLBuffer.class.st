Class {
	#name : #GLBuffer,
	#superclass : #GLObject,
	#pools : [
		'GLConstants'
	],
	#category : #'MPOpenGL-Core'
}

{ #category : #destruction }
GLBuffer >> delete [ 
	self subclassResponsibility 
]

Class {
	#name : #AbstractGLBuffer,
	#superclass : #AbstractGLObject,
	#pools : [
		'GLConstants'
	],
	#category : #'MPOpenGL-Core'
}

{ #category : #'instance creation' }
AbstractGLBuffer class >> newFor: gl [ 
	^ self new gl: gl;
		 createBuffer;
		 yourself
]

{ #category : #binding }
AbstractGLBuffer >> bind [
	self subclassResponsibility 
]

{ #category : #binding }
AbstractGLBuffer >> boundDo: aBlock [

	self bind.
	aBlock value.
	self unbind
]

{ #category : #destruction }
AbstractGLBuffer >> create [
	self subclassResponsibility 
]

{ #category : #'initialize-release' }
AbstractGLBuffer >> createBuffer [
	self create
]

{ #category : #destruction }
AbstractGLBuffer >> delete [ 
	self subclassResponsibility 
]

{ #category : #destruction }
AbstractGLBuffer >> deleteBuffer [
	self delete
]

{ #category : #binding }
AbstractGLBuffer >> unbind [
	self subclassResponsibility 
]

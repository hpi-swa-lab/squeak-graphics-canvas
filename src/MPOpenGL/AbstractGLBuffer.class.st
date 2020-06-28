Class {
	#name : #AbstractGLBuffer,
	#superclass : #Object,
	#instVars : [
		'gl',
		'id'
	],
	#pools : [
		'GLConstants'
	],
	#category : 'MPOpenGL-Core'
}

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

{ #category : #accessing }
AbstractGLBuffer >> gl [
	^ gl
]

{ #category : #accessing }
AbstractGLBuffer >> gl: anObject [
	gl := anObject
]

{ #category : #accessing }
AbstractGLBuffer >> id [
	^ id
]

{ #category : #accessing }
AbstractGLBuffer >> id: anObject [
	id := anObject
]

{ #category : #'initialize-release' }
AbstractGLBuffer >> initialize [
	self gl: GL value.
	self createBuffer.
]

{ #category : #binding }
AbstractGLBuffer >> unbind [
	self subclassResponsibility 
]

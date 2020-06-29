Class {
	#name : #AbstractGLObject,
	#superclass : #Object,
	#instVars : [
		'gl',
		'id'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'MPOpenGL-Core'
}

{ #category : #'instance creation' }
AbstractGLObject class >> newFor: gl [
	self subclassResponsibility  
]

{ #category : #binding }
AbstractGLObject >> bind [
	self subclassResponsibility
]

{ #category : #binding }
AbstractGLObject >> bindable [
	self subclassResponsibility 
]

{ #category : #binding }
AbstractGLObject >> boundDuring: aBlock [

	self bind.
	aBlock ensure: [self unbind].
	
]

{ #category : #accessing }
AbstractGLObject >> gl [
	^ gl
]

{ #category : #accessing }
AbstractGLObject >> gl: anObject [ 
	anObject
		ifNil: [self useDynamicGLContext]
		ifNotNil: [gl := anObject]
]

{ #category : #accessing }
AbstractGLObject >> id [
	^ id
]

{ #category : #binding }
AbstractGLObject >> unbind [
	self subclassResponsibility 
]

{ #category : #'gl version' }
AbstractGLObject >> useDynamicGLContext [
	"use GL from dynamic variable"
	self gl: GL value.
	
]

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

{ #category : #accessing }
AbstractGLObject >> id: anObject [
	id := anObject
]

{ #category : #'gl version' }
AbstractGLObject >> useDynamicGLContext [
	"use GL from dynamic variable"
	self gl: GL value.
	
]

"
An AbstractGLObject is a Squeak representation of some OpenGL Object.

An OpenGL Object is an OpenGL construct that contains some state. When they are bound to the context, the state that they contain is mapped into the context's state. Thus, changes to context state will be stored in this object, and functions that act on this context state will use the state stored in the object. 

@see https://www.khronos.org/opengl/wiki/OpenGL_Object#Object_Creation_and_Destruction

Instance Variables
	gl:		OpenGL context used (should be settable to enable OpenGL to be mockable in unit tests)
	id:		OpenGL id used for the object in OpenGL (only applicable for some objects)



"
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

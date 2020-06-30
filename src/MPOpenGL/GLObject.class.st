"
An AbstractGLObject is a Squeak representation of some OpenGL Object.

An OpenGL Object is an OpenGL construct that contains some state. When they are bound to the context, the state that they contain is mapped into the context's state. Thus, changes to context state will be stored in this object, and functions that act on this context state will use the state stored in the object. 

@see https://www.khronos.org/opengl/wiki/OpenGL_Object#Object_Creation_and_Destruction

Instance Variables
	gl:		OpenGL context used (should be settable to enable OpenGL to be mockable in unit tests)
	id:		OpenGL id used for the object in OpenGL (only applicable for some objects)



"
Class {
	#name : #GLObject,
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
GLObject class >> context: glContext [

	^ self basicNew
		initializeWith: glContext;
		yourself
]

{ #category : #binding }
GLObject >> bind [

	self subclassResponsibility
]

{ #category : #binding }
GLObject >> boundDuring: aBlock [

	self bind.
	gl checkForError.
	aBlock ensure: [
		self unbind.
		gl checkForError].
	
]

{ #category : #accessing }
GLObject >> gl [
	^ gl
]

{ #category : #accessing }
GLObject >> gl: anObject [ 
	anObject
		ifNil: [self useDynamicGLContext]
		ifNotNil: [gl := anObject]
]

{ #category : #accessing }
GLObject >> id [
	^ id
]

{ #category : #initialization }
GLObject >> initializeWith: glContext [

	self gl: glContext
]

{ #category : #binding }
GLObject >> unbind [

	self subclassResponsibility 
]

{ #category : #'gl version' }
GLObject >> useDynamicGLContext [
	"use GL from dynamic variable"
	self gl: GL value.
	
]

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
		'context',
		'id'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGL-Core'
}

{ #category : #'instance creation' }
GLObject class >> create [

	^ self basicNew
		initialize;
		register;
		yourself
]

{ #category : #'instance creation' }
GLObject class >> new [

	self shouldNotImplement
]

{ #category : #binding }
GLObject >> bind [

	self bind: id
]

{ #category : #binding }
GLObject >> bind: anID [

	self flag: #todo. "Move this to class-side?"
	self subclassResponsibility
]

{ #category : #accessing }
GLObject >> bindingEnum [

	self subclassResponsibility
]

{ #category : #binding }
GLObject >> boundDuring: aBlock [

	| previousBinding |
	GL assertIsCurrent.
	(previousBinding := self currentBinding) = id ifTrue: [^ aBlock value].
	self bind.
	GL checkForError.
	aBlock ensure: [
		GL checkForError.
		self bind: previousBinding.
		GL checkForError]
]

{ #category : #'initialize-release' }
GLObject >> cleanUp [

	id := -1 "Obviously invalid"
]

{ #category : #binding }
GLObject >> currentBinding [

	^ GL getInteger: self bindingEnum
]

{ #category : #accessing }
GLObject >> id [

	^ id
]

{ #category : #'initialize-release' }
GLObject >> initialize [

	context := GL context
]

{ #category : #accessing }
GLObject >> library [

	^ context library
]

{ #category : #'initialize-release' }
GLObject >> register [

	GL registerObject: self
]

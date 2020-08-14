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

	self deprecated: 'use GL value createObject: ', self name.
	
	^ self basicNew
		initializeWithContext: glContext;
		yourself
]

{ #category : #'instance creation' }
GLObject class >> create [

	^ GL value createObject: self
]

{ #category : #'instance creation' }
GLObject class >> new [

	self shouldNotImplement
]

{ #category : #'instance creation' }
GLObject class >> privateCreateFor: glContext [
	" method used by GLResources to create this object. Don't call directly but use OpenGL>>#createObject: "

	^ self basicNew
		initializeWithContext: glContext;
		yourself
]

{ #category : #binding }
GLObject >> bind [

	self bind: id
]

{ #category : #binding }
GLObject >> bind: anID [

	self subclassResponsibility
]

{ #category : #accessing }
GLObject >> bindingEnum [

	self subclassResponsibility
]

{ #category : #binding }
GLObject >> boundDuring: aBlock [

	| previousBinding |
	
	self assert: (GL value == gl).
	
	previousBinding := self currentBinding.
	previousBinding = id ifTrue: [^ aBlock value].
	self bind.
	gl checkForError.
	aBlock ensure: [
		self bind: previousBinding.
		gl checkForError]
]

{ #category : #'gl version' }
GLObject >> cleanup [

	id := 0
]

{ #category : #binding }
GLObject >> currentBinding [

	| id |
	id := IntegerArray new: 1.
	gl glGetIntegerv: self bindingEnum with: id.
	^ id first
]

{ #category : #accessing }
GLObject >> gl [

	^ gl
]

{ #category : #accessing }
GLObject >> gl: anObject [ 

	gl := anObject
]

{ #category : #accessing }
GLObject >> id [

	^ id
]

{ #category : #initialization }
GLObject >> initializeWithContext: glContext [

	gl := glContext ifNil: [GL value]
]

{ #category : #binding }
GLObject >> unbind [

	self bind: GL_NONE
]

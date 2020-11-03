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
	#category : #'OpenGL-Wrappers'
}

{ #category : #allocation }
GLObject class >> allocate [
	"Allocates an object with OpenGL. Returns the id to reference it."
	self subclassResponsibility
]

{ #category : #'instance creation' }
GLObject class >> create [

	^ (self id: self allocate) register
]

{ #category : #'instance creation' }
GLObject class >> id: anInteger [

	^ self basicNew
		id: anInteger;
		initialize
]

{ #category : #'instance creation' }
GLObject class >> new [

	self shouldNotImplement
]

{ #category : #converting }
GLObject class >> newFrom: glObject [

	^ self id: glObject id
]

{ #category : #comparing }
GLObject >> = otherObject [

	self == otherObject ifTrue: [^ true].
	context = otherObject context ifFalse: [^ false].
	id = otherObject id ifFalse: [^ false].
	^ true
]

{ #category : #'initialize-release' }
GLObject >> cleanUp [

	id := -1 "Obviously invalid"
]

{ #category : #accessing }
GLObject >> context [

	^ context
]

{ #category : #'initialize-release' }
GLObject >> delete [

	id := -1 "Obviously invalid"
]

{ #category : #comparing }
GLObject >> hash [

	^ id hash bitXor: context hash
]

{ #category : #accessing }
GLObject >> id [

	^ id
]

{ #category : #'initialize-release' }
GLObject >> initialize [

	context := GL context
]

{ #category : #testing }
GLObject >> isBuffer [

	^ false
]

{ #category : #testing }
GLObject >> isFrameBuffer [

	^ false
]

{ #category : #testing }
GLObject >> isProgram [

	^ false
]

{ #category : #testing }
GLObject >> isShader [

	^ false
]

{ #category : #testing }
GLObject >> isTexture [

	^ false
]

{ #category : #testing }
GLObject >> isVertexArray [

	^ false
]

{ #category : #accessing }
GLObject >> library [

	^ context library
]

{ #category : #'initialize-release' }
GLObject >> register [

	GL registerObject: self
]

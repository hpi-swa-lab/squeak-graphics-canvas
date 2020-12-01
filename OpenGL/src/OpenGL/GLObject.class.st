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
	#category : #'OpenGL-Wrappers',
	#commentStamp : ''
}

{
	#category : #allocation,
	#timestamp : ''
}
GLObject class >> allocate [
	"Allocates an object with OpenGL. Returns the id to reference it."
	self subclassResponsibility
]

{
	#category : #'instance creation',
	#timestamp : ''
}
GLObject class >> create [

	^ (self id: self allocate) register
]

{
	#category : #'instance creation',
	#timestamp : ''
}
GLObject class >> id: anInteger [

	^ self basicNew
		id: anInteger;
		initialize
]

{
	#category : #'instance creation',
	#timestamp : ''
}
GLObject class >> new [

	self shouldNotImplement
]

{
	#category : #converting,
	#timestamp : ''
}
GLObject class >> newFrom: glObject [

	^ self id: glObject id
]

{
	#category : #comparing,
	#timestamp : ''
}
GLObject >> = otherObject [

	self == otherObject ifTrue: [^ true].
	context = otherObject context ifFalse: [^ false].
	id = otherObject id ifFalse: [^ false].
	^ true
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLObject >> cleanUp [

	id := -1 "Obviously invalid"
]

{
	#category : #accessing,
	#timestamp : ''
}
GLObject >> context [

	^ context
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLObject >> delete [

	id := -1 "Obviously invalid"
]

{
	#category : #comparing,
	#timestamp : ''
}
GLObject >> hash [

	^ id hash bitXor: context hash
]

{
	#category : #accessing,
	#timestamp : ''
}
GLObject >> id [

	^ id
]

{
	#category : #accessing,
	#timestamp : ''
}
GLObject >> id: anInteger [

	id := anInteger
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLObject >> initialize [

	context := GL context
]

{
	#category : #testing,
	#timestamp : ''
}
GLObject >> isBuffer [

	^ false
]

{
	#category : #testing,
	#timestamp : ''
}
GLObject >> isFrameBuffer [

	^ false
]

{
	#category : #testing,
	#timestamp : ''
}
GLObject >> isProgram [

	^ false
]

{
	#category : #testing,
	#timestamp : ''
}
GLObject >> isShader [

	^ false
]

{
	#category : #testing,
	#timestamp : ''
}
GLObject >> isTexture [

	^ false
]

{
	#category : #testing,
	#timestamp : ''
}
GLObject >> isVertexArray [

	^ false
]

{
	#category : #accessing,
	#timestamp : ''
}
GLObject >> library [

	^ context library
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLObject >> register [

	GL registerObject: self
]

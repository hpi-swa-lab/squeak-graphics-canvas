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
	#timestamp : 'stlu 10/28/2020 14:12'
}
GLObject class >> allocate [
	"Allocates an object with OpenGL. Returns the id to reference it."
	self subclassResponsibility
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 10/29/2020 01:25'
}
GLObject class >> create [

	^ (self id: self allocate) register
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 10/29/2020 01:25'
}
GLObject class >> id: anInteger [

	^ self basicNew
		id: anInteger;
		initialize
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLObject class >> new [

	self shouldNotImplement
]

{
	#category : #converting,
	#timestamp : 'stlu 10/29/2020 12:10'
}
GLObject class >> newFrom: glObject [

	^ self id: glObject id
]

{
	#category : #comparing,
	#timestamp : 'stlu 10/29/2020 01:22'
}
GLObject >> = otherObject [

	self == otherObject ifTrue: [^ true].
	context = otherObject context ifFalse: [^ false].
	id = otherObject id ifFalse: [^ false].
	^ true
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 10/26/2020 12:11'
}
GLObject >> cleanUp [

	id := -1 "Obviously invalid"
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/29/2020 01:33'
}
GLObject >> context [

	^ context
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 10/29/2020 01:29'
}
GLObject >> delete [

	id := -1 "Obviously invalid"
]

{
	#category : #comparing,
	#timestamp : 'stlu 10/29/2020 01:22'
}
GLObject >> hash [

	^ id hash bitXor: context hash
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLObject >> id [

	^ id
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/3/2020 16:36'
}
GLObject >> id: anInteger [

	id := anInteger
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 10/26/2020 12:08'
}
GLObject >> initialize [

	context := GL context
]

{
	#category : #testing,
	#timestamp : 'stlu 10/29/2020 12:12'
}
GLObject >> isBuffer [

	^ false
]

{
	#category : #testing,
	#timestamp : 'stlu 10/29/2020 12:14'
}
GLObject >> isFrameBuffer [

	^ false
]

{
	#category : #testing,
	#timestamp : 'stlu 10/29/2020 12:12'
}
GLObject >> isProgram [

	^ false
]

{
	#category : #testing,
	#timestamp : 'stlu 10/29/2020 12:12'
}
GLObject >> isShader [

	^ false
]

{
	#category : #testing,
	#timestamp : 'stlu 10/29/2020 12:12'
}
GLObject >> isTexture [

	^ false
]

{
	#category : #testing,
	#timestamp : 'stlu 10/29/2020 12:14'
}
GLObject >> isVertexArray [

	^ false
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/26/2020 12:08'
}
GLObject >> library [

	^ context library
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 10/26/2020 12:14'
}
GLObject >> register [

	GL registerObject: self
]

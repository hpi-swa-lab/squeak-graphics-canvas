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
	#timestamp : 'stlu 12/1/2020 02:57'
}
GLObject class >> allocate [
	"Allocates an object with OpenGL. Returns the allocated object's id."
	^ (self allocate: 1) first
]

{
	#category : #allocation,
	#timestamp : 'stlu 11/30/2020 19:45'
}
GLObject class >> allocate: n [
	"Allocates n objects with OpenGL. Returns an array of the ids of the allocated objects."
	| array |
	array := IntegerArray new: n.
	self allocate: n in: array.
	^ array
]

{
	#category : #allocation,
	#timestamp : 'stlu 11/30/2020 19:44'
}
GLObject class >> allocate: n in: anIntegerArray [
	"Allocates n objects with OpenGL. Stores the allocated objects' ids in anIntegerArray."
	self subclassResponsibility
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 19:04'
}
GLObject class >> bindID: anInteger [

	self bindID: anInteger to: self target
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 17:58'
}
GLObject class >> bindID: anInteger to: target [

	self subclassResponsibility
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 18:12'
}
GLObject class >> bound [

	^ self boundTo: self target
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 19:31'
}
GLObject class >> boundTo: target [

	^ GL recallBinding: target
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
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 18:11'
}
GLObject class >> target [

	self subclassResponsibility
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 18:11'
}
GLObject class >> unbind [

	self unbind: self target
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 19:20'
}
GLObject class >> unbind: target [

	self bindID: GL_NONE to: target.
	GL forgetBinding: target
]

{
	#category : #comparing,
	#timestamp : 'stlu 12/3/2020 16:01'
}
GLObject >> = otherObject [

	self == otherObject ifTrue: [^ true].
	id = otherObject id ifFalse: [^ false].
	self class = otherObject class ifFalse: [^ false].
	context = otherObject context ifFalse: [^ false].
	^ true
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 18:03'
}
GLObject >> bind [

	self bindTo: self target
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 19:19'
}
GLObject >> bindTo: targetEnum [

	self class bindID: id to: targetEnum.
	GL rememberBinding: targetEnum as: self
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 18:08'
}
GLObject >> boundDuring: aBlock [

	^ self boundTo: self target during: aBlock
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 18:00'
}
GLObject >> boundTo: targetEnum during: aBlock [

	| previous |
	previous := self class boundTo: targetEnum.
	previous = self ifTrue: [^ aBlock value].
	self bindTo: targetEnum.
	^ aBlock ensure: [
		previous
			ifNil: [self class unbind: targetEnum]
			ifNotNil: [previous bindTo: targetEnum]]
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
	#timestamp : 'stlu 12/3/2020 16:06'
}
GLObject >> hash [

	^ (id hash bitXor: context hash) bitXor: self class hash
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
	#timestamp : 'stlu 12/14/2020 12:10'
}
GLObject >> isAllocated [

	self subclassResponsibility
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
	#category : #printing,
	#timestamp : 'stlu 12/1/2020 03:08'
}
GLObject >> printOn: aStream [

	super printOn: aStream.
	aStream nextPut: $(.
	id printOn: aStream.
	aStream nextPut: $)
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 10/26/2020 12:14'
}
GLObject >> register [

	GL registerObject: self
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 18:04'
}
GLObject >> target [

	self subclassResponsibility
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 18:04'
}
GLObject >> unbind [

	self class unbind: self target
]

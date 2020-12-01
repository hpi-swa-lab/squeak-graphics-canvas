Class {
	#name : #GLTexture,
	#superclass : #GLObject,
	#category : #'OpenGL-Wrappers-Textures',
	#commentStamp : ''
}

{
	#category : #allocation,
	#timestamp : ''
}
GLTexture class >> allocate [

	IntegerArray new: 1 during: [:ids |
		GL genTextures: 1 with: ids.
		^ ids first]
]

{
	#category : #binding,
	#timestamp : ''
}
GLTexture class >> bind: id [

	self bind: id to: self target
]

{
	#category : #binding,
	#timestamp : ''
}
GLTexture class >> bind: id to: target [

	GL bindTexture: target with: id
]

{
	#category : #binding,
	#timestamp : ''
}
GLTexture class >> bindingEnum [

	self subclassResponsibility
]

{
	#category : #binding,
	#timestamp : ''
}
GLTexture class >> currentBinding [

	^ GL getIntegerParameter: self bindingEnum
]

{
	#category : #binding,
	#timestamp : ''
}
GLTexture class >> target [

	self subclassResponsibility
]

{
	#category : #binding,
	#timestamp : ''
}
GLTexture >> bind [

	self class bind: id
]

{
	#category : #binding,
	#timestamp : ''
}
GLTexture >> boundDuring: aBlock [

	| previousID |
	self flag: #todo. "Remember actual objects"
	previousID := self class currentBinding.
	previousID = id ifTrue: [^ aBlock value].
	self class bind: id.
	aBlock ensure: [
		self class bind: previousID]
]

{
	#category : #testing,
	#timestamp : ''
}
GLTexture >> isTexture [

	^ true
]

{
	#category : #binding,
	#timestamp : ''
}
GLTexture >> target [

	^ self class target
]

Class {
	#name : #GLTexture,
	#superclass : #GLObject,
	#category : #'OpenGL-Wrappers-Textures',
	#commentStamp : ''
}

{
	#category : #allocation,
	#timestamp : 'stlu 11/30/2020 19:54'
}
GLTexture class >> allocate: n in: anIntegerArray [

	GL genTextures: n with: anIntegerArray
]

{
	#category : #binding,
	#timestamp : 'stlu 11/6/2020 14:57'
}
GLTexture class >> bind: id [

	self bind: id to: self target
]

{
	#category : #binding,
	#timestamp : 'stlu 11/6/2020 14:57'
}
GLTexture class >> bind: id to: target [

	GL bindTexture: target with: id
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:36'
}
GLTexture class >> bindingEnum [

	self subclassResponsibility
]

{
	#category : #binding,
	#timestamp : 'stlu 11/13/2020 16:26'
}
GLTexture class >> currentBinding [

	^ GL getIntegerParameter: self bindingEnum
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:42'
}
GLTexture class >> target [

	self subclassResponsibility
]

{
	#category : #binding,
	#timestamp : 'stlu 11/6/2020 14:57'
}
GLTexture >> bind [

	self class bind: id
]

{
	#category : #binding,
	#timestamp : 'stlu 11/6/2020 14:57'
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
	#timestamp : 'stlu 10/29/2020 12:16'
}
GLTexture >> isTexture [

	^ true
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:25'
}
GLTexture >> target [

	^ self class target
]

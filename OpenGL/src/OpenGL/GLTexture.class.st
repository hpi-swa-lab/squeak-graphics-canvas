Class {
	#name : #GLTexture,
	#superclass : #GLObject,
	#category : #'OpenGL-Wrappers-Textures'
}

{ #category : #allocation }
GLTexture class >> allocate [

	IntegerArray new: 1 during: [:ids |
		GL genTextures: 1 with: ids.
		^ ids first]
]

{ #category : #binding }
GLTexture class >> bind: id [

	self bind: id to: self target
]

{ #category : #binding }
GLTexture class >> bind: id to: target [

	GL bindTexture: target with: id
]

{ #category : #binding }
GLTexture class >> bindingEnum [

	self subclassResponsibility
]

{ #category : #binding }
GLTexture class >> currentBinding [

	^ GL getIntegerParameter: self bindingEnum
]

{ #category : #binding }
GLTexture class >> target [

	self subclassResponsibility
]

{ #category : #binding }
GLTexture >> bind [

	self class bind: id
]

{ #category : #binding }
GLTexture >> boundDuring: aBlock [

	| previousID |
	self flag: #todo. "Remember actual objects"
	previousID := self class currentBinding.
	previousID = id ifTrue: [^ aBlock value].
	self class bind: id.
	aBlock ensure: [
		self class bind: previousID]
]

{ #category : #'initialize-release' }
GLTexture >> delete [
	
	GL deleteTextures: 1 with: (IntegerArray with: id).
]

{ #category : #testing }
GLTexture >> isTexture [

	^ true
]

{ #category : #binding }
GLTexture >> target [

	^ self class target
]

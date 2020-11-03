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
GLTexture class >> bind: glTexture [

	self bindId: glTexture id
]

{ #category : #binding }
GLTexture class >> bind: glTexture during: aBlock [

	| previousTexture |
	self flag: #todo. "Remember actual objects"
	(previousTexture := self getBoundId) = glTexture id ifTrue: [^ aBlock value].
	self bindId: glTexture id.
	aBlock ensure: [
		self bindId: previousTexture]
]

{ #category : #binding }
GLTexture class >> bindId: anInteger [

	self bindId: anInteger to: self target
]

{ #category : #binding }
GLTexture class >> bindId: anInteger to: target [

	GL bindTexture: target with: anInteger
]

{ #category : #binding }
GLTexture class >> bindingEnum [

	self subclassResponsibility
]

{ #category : #binding }
GLTexture class >> getBoundId [

	^ self getIntegerParameter: self bindingEnum
]

{ #category : #binding }
GLTexture class >> target [

	self subclassResponsibility
]

{ #category : #binding }
GLTexture >> bind [

	self class bind: self
]

{ #category : #binding }
GLTexture >> boundDuring: aBlock [

	self class bind: self during: aBlock
]

{ #category : #testing }
GLTexture >> isTexture [

	^ true
]

{ #category : #binding }
GLTexture >> target [

	^ self class target
]

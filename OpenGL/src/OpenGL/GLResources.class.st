Class {
	#name : #GLResources,
	#superclass : #Object,
	#instVars : [
		'objects',
		'shaders',
		'userData'
	],
	#category : #'OpenGL-Context',
	#commentStamp : ''
}

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLResources >> cleanUp [

	objects do: [:object | object cleanUp]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLResources >> getShaderProgram: aClass library: aLibrary [
	
	aLibrary assertIsCurrent.
	^ shaders
		at: aClass
		ifAbsentPut: [aClass create]
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLResources >> initialize [

	super initialize.
	
	shaders := IdentityDictionary new.
	objects := OrderedCollection new.
	userData := Dictionary new.
]

{
	#category : #accessing,
	#timestamp : ''
}
GLResources >> objects [

	^ objects
]

{
	#category : #accessing,
	#timestamp : ''
}
GLResources >> shaders [

	^ shaders
]

{
	#category : #accessing,
	#timestamp : ''
}
GLResources >> userData [
	^ userData
]

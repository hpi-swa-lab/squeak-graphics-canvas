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
	#timestamp : 'stlu 10/26/2020 12:06'
}
GLResources >> cleanUp [

	objects do: [:object | object cleanUp]
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/26/2020 12:20'
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
	#timestamp : 'stlu 10/26/2020 11:39'
}
GLResources >> objects [

	^ objects
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/26/2020 11:39'
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

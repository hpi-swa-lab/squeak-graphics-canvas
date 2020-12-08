Class {
	#name : #GLResources,
	#superclass : #Object,
	#instVars : [
		'objects',
		'shaders',
		'userData'
	],
	#category : #'OpenGL-Context'
}

{ #category : #'initialize-release' }
GLResources >> cleanUp [

	objects do: [:object | object cleanUp].
	
	shaders removeAll.
	objects removeAll.
	userData removeAll.
]

{ #category : #accessing }
GLResources >> getShaderProgram: aClass library: aLibrary [
	
	aLibrary assertIsCurrent.
	^ shaders
		at: aClass
		ifAbsentPut: [aClass create]
]

{ #category : #'initialize-release' }
GLResources >> initialize [

	super initialize.
	
	shaders := IdentityDictionary new.
	objects := OrderedCollection new.
	userData := Dictionary new.
]

{ #category : #accessing }
GLResources >> objects [

	^ objects
]

{ #category : #nil }
GLResources >> recompileShaders [
	
	shaders keysDo: [:aClass | shaders at: aClass put: aClass create]
]

{ #category : #accessing }
GLResources >> shaders [

	^ shaders
]

{ #category : #accessing }
GLResources >> userData [
	^ userData
]

Class {
	#name : #GLResources,
	#superclass : #Object,
	#instVars : [
		'objects',
		'shaders',
		'userData'
	],
	#category : #'MPOpenGL-Core'
}

{ #category : #'as yet unclassified' }
GLResources >> cleanup [

	objects do: [:object | object cleanup]
]

{ #category : #'as yet unclassified' }
GLResources >> createObject: aClass context: aContext [

	| object |
	object := aClass privateCreateFor: aContext.
	objects add: object.
	^ object
]

{ #category : #'as yet unclassified' }
GLResources >> getShaderProgram: aClass library: aLibrary [

	^ shaders at: aClass ifAbsentPut: [ | shader |
		shader := aLibrary createObject: aClass.
		shader]
]

{ #category : #'as yet unclassified' }
GLResources >> initialize [

	super initialize.
	
	shaders := IdentityDictionary new.
	objects := OrderedCollection new.
	userData := Dictionary new.
]

{ #category : #accessing }
GLResources >> userData [
	^ userData
]

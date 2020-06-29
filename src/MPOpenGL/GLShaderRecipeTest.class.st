Class {
	#name : #GLShaderRecipeTest,
	#superclass : #GLTestCase,
	#instVars : [
		'shaderRecipe'
	],
	#pools : [
		'GLConstants',
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Test'
}

{ #category : #'before each' }
GLShaderRecipeTest >> setUp [
	super setUp.
	shaderRecipe := self shaderRecipeClass
		subclass: #TestShaderRecipe
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self class category asString.
	
]

{ #category : #reference }
GLShaderRecipeTest >> shaderRecipeClass [
	^GLShaderRecipe 
]

{ #category : #'after each' }
GLShaderRecipeTest >> tearDown [
	super tearDown.
	shaderRecipe removeFromSystem
]

{ #category : #testing }
GLShaderRecipeTest >> testGeneratingTestShaderRecipe [
	"nothing to do, if this fails, the setup and teardown logic was faulty"
	^ self
]

{ #category : #testing }
GLShaderRecipeTest >> testShaderRecipe [
	"given"
	"when"
	"then"
	
]

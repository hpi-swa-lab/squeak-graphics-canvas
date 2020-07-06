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

{ #category : #reference }
GLShaderRecipeTest >> glObject [
	^GLObject 
]

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
GLShaderRecipeTest >> testCookingProducesGLObject [
	"given"
	shaderRecipe compile: 'fragmentShader ^self' classified: #code.
	shaderRecipe compile: 'vertexShader ^self' classified: #code.
	"when"
	self assert: [shaderRecipe buildFor: gl] throws: Error.
	
]

{ #category : #testing }
GLShaderRecipeTest >> testGeneratingTestShaderRecipe [
	"nothing to do, if this fails, the setup and teardown logic was faulty"
	^ self
]

{ #category : #testing }
GLShaderRecipeTest >> testShaderRecipe [
	| program |
	"given"
	"when"
	program := self workingShaderExample cookWith: gl.
	"then"
	self assert: (program isKindOf: self glObject)
	
]

{ #category : #reference }
GLShaderRecipeTest >> workingShaderExample [
	^SqueakBaseShaderRecipe 
]

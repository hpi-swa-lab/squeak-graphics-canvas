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
	super setUp
]

{ #category : #reference }
GLShaderRecipeTest >> shaderRecipeClass [
	^GLShaderRecipe 
]

{ #category : #'after each' }
GLShaderRecipeTest >> tearDown [
	super tearDown 
]

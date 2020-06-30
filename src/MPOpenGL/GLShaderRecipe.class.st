Class {
	#name : #GLShaderRecipe,
	#superclass : #Object,
	#category : 'MPOpenGL-Shaders'
}

{ #category : #usage }
GLShaderRecipe class >> build [
	self new; build; yourself
]

{ #category : #usage }
GLShaderRecipe class >> buildFor: gl [ 
	self new; buildFor: gl; yourself
]

{ #category : #usage }
GLShaderRecipe >> build [
	"build shader using gl provided by dynamic variable"
	self buildFor: GL value
]

{ #category : #usage }
GLShaderRecipe >> buildFor: gl [
	"call instance creation of gl programm class with recipe"
	^self programClass
		newFor: gl
		shaders: (OrderedCollection
				with: (VertexShader code: self vertexShader)
				with: (FragmentShader code: self fragmentShader))
]

{ #category : #code }
GLShaderRecipe >> fragmentShader [
	self subclassResponsibility 
]

{ #category : #references }
GLShaderRecipe >> programClass [
	^GLProgram 
]

{ #category : #code }
GLShaderRecipe >> vertexShader [
	self subclassResponsibility 
]

Class {
	#name : #GLShaderCompilationError,
	#superclass : #Error,
	#instVars : [
		'shader',
		'infoLog'
	],
	#category : #'OpenGL-Shaders'
}

{ #category : #'instance creation' }
GLShaderCompilationError class >> shader: glShader infoLog: aString [

	^ self new
		shader: glShader;
		infoLog: aString;
		yourself
]

{ #category : #accessing }
GLShaderCompilationError >> infoLog [

	^ infoLog
]

{ #category : #accessing }
GLShaderCompilationError >> infoLog: anObject [

	infoLog := anObject
]

{ #category : #accessing }
GLShaderCompilationError >> shader [

	^ shader
]

{ #category : #accessing }
GLShaderCompilationError >> shader: aGLShader [

	shader := aGLShader
]

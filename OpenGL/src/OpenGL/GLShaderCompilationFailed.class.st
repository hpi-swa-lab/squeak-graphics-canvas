Class {
	#name : #GLShaderCompilationFailed,
	#superclass : #Error,
	#instVars : [
		'shader',
		'infoLog'
	],
	#category : #'OpenGL-Wrappers-Errors'
}

{ #category : #'instance creation' }
GLShaderCompilationFailed class >> shader: glShader infoLog: aString [

	^ self new
		shader: glShader;
		infoLog: aString;
		yourself
]

{ #category : #accessing }
GLShaderCompilationFailed >> infoLog [

	^ infoLog
]

{ #category : #accessing }
GLShaderCompilationFailed >> infoLog: anObject [

	infoLog := anObject
]

{ #category : #accessing }
GLShaderCompilationFailed >> messageText [

	^ messageText ifNil: [infoLog]
]

{ #category : #accessing }
GLShaderCompilationFailed >> shader [

	^ shader
]

{ #category : #accessing }
GLShaderCompilationFailed >> shader: aGLShader [

	shader := aGLShader
]

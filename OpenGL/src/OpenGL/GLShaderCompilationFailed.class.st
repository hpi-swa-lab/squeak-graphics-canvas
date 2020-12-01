Class {
	#name : #GLShaderCompilationFailed,
	#superclass : #Error,
	#instVars : [
		'shader',
		'infoLog'
	],
	#category : #'OpenGL-Wrappers-Errors',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
GLShaderCompilationFailed class >> shader: glShader infoLog: aString [

	^ self new
		shader: glShader;
		infoLog: aString;
		yourself
]

{
	#category : #accessing,
	#timestamp : ''
}
GLShaderCompilationFailed >> infoLog [

	^ infoLog
]

{
	#category : #accessing,
	#timestamp : ''
}
GLShaderCompilationFailed >> infoLog: anObject [

	infoLog := anObject
]

{
	#category : #accessing,
	#timestamp : ''
}
GLShaderCompilationFailed >> messageText [

	^ messageText ifNil: [infoLog]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLShaderCompilationFailed >> shader [

	^ shader
]

{
	#category : #accessing,
	#timestamp : ''
}
GLShaderCompilationFailed >> shader: aGLShader [

	shader := aGLShader
]

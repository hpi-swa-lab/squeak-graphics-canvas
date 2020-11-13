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
	#timestamp : 'stlu 10/26/2020 17:38'
}
GLShaderCompilationFailed class >> shader: glShader infoLog: aString [

	^ self new
		shader: glShader;
		infoLog: aString;
		yourself
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/26/2020 17:35'
}
GLShaderCompilationFailed >> infoLog [

	^ infoLog
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/26/2020 17:35'
}
GLShaderCompilationFailed >> infoLog: anObject [

	infoLog := anObject
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/27/2020 12:09'
}
GLShaderCompilationFailed >> messageText [

	^ messageText ifNil: [infoLog]
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/26/2020 17:34'
}
GLShaderCompilationFailed >> shader [

	^ shader
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/26/2020 17:35'
}
GLShaderCompilationFailed >> shader: aGLShader [

	shader := aGLShader
]

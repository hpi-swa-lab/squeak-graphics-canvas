Class {
	#name : #GLProgramLinkingFailed,
	#superclass : #Error,
	#instVars : [
		'program',
		'infoLog'
	],
	#category : #'OpenGL-Wrappers-Errors',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
GLProgramLinkingFailed class >> program: glProgram infoLog: aString [

	^ self new
		program: glProgram;
		infoLog: aString;
		yourself
]

{
	#category : #accessing,
	#timestamp : ''
}
GLProgramLinkingFailed >> infoLog [

	^ infoLog
]

{
	#category : #accessing,
	#timestamp : ''
}
GLProgramLinkingFailed >> infoLog: anObject [

	infoLog := anObject
]

{
	#category : #accessing,
	#timestamp : ''
}
GLProgramLinkingFailed >> messageText [

	^ messageText ifNil: [infoLog]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLProgramLinkingFailed >> program [

	^ program
]

{
	#category : #accessing,
	#timestamp : ''
}
GLProgramLinkingFailed >> program: anObject [

	program := anObject
]

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
	#timestamp : 'stlu 10/27/2020 12:51'
}
GLProgramLinkingFailed class >> program: glProgram infoLog: aString [

	^ self new
		program: glProgram;
		infoLog: aString;
		yourself
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/27/2020 12:51'
}
GLProgramLinkingFailed >> infoLog [

	^ infoLog
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/27/2020 12:51'
}
GLProgramLinkingFailed >> infoLog: anObject [

	infoLog := anObject
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/27/2020 12:51'
}
GLProgramLinkingFailed >> messageText [

	^ messageText ifNil: [infoLog]
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/27/2020 12:51'
}
GLProgramLinkingFailed >> program [

	^ program
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/27/2020 12:51'
}
GLProgramLinkingFailed >> program: anObject [

	program := anObject
]

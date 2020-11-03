Class {
	#name : #GLProgramLinkingFailed,
	#superclass : #Error,
	#instVars : [
		'program',
		'infoLog'
	],
	#category : #'OpenGL-Wrappers-Errors'
}

{ #category : #'instance creation' }
GLProgramLinkingFailed class >> program: glProgram infoLog: aString [

	^ self new
		program: glProgram;
		infoLog: aString;
		yourself
]

{ #category : #accessing }
GLProgramLinkingFailed >> infoLog [

	^ infoLog
]

{ #category : #accessing }
GLProgramLinkingFailed >> infoLog: anObject [

	infoLog := anObject
]

{ #category : #accessing }
GLProgramLinkingFailed >> messageText [

	^ messageText ifNil: [infoLog]
]

{ #category : #accessing }
GLProgramLinkingFailed >> program [

	^ program
]

{ #category : #accessing }
GLProgramLinkingFailed >> program: anObject [

	program := anObject
]

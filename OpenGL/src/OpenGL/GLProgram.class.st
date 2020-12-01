Class {
	#name : #GLProgram,
	#superclass : #GLObject,
	#instVars : [
		'shaders',
		'resources'
	],
	#category : #'OpenGL-Wrappers-Shaders',
	#commentStamp : ''
}

{
	#category : #allocation,
	#timestamp : 'stlu 11/3/2020 15:38'
}
GLProgram class >> allocate [

	^ GL createProgram
]

{
	#category : #allocation,
	#timestamp : 'stlu 11/30/2020 19:52'
}
GLProgram class >> allocate: n in: anIntegerArray [

	1 to: n do: [:i |
		anIntegerArray at: i put: self allocate]
]

{
	#category : #activation,
	#timestamp : 'stlu 11/6/2020 15:05'
}
GLProgram class >> current [

	^ GL getIntegerParameter: GL_CURRENT_PROGRAM
]

{
	#category : #activation,
	#timestamp : 'stlu 11/6/2020 15:05'
}
GLProgram class >> use: id [

	GL useProgram: id
]

{
	#category : #actions,
	#timestamp : 'stlu 11/3/2020 15:36'
}
GLProgram >> attachShader: glShader [

	GL attachShader: id with: glShader id.
	shaders add: glShader
]

{
	#category : #'error handling',
	#timestamp : 'stlu 10/28/2020 13:27'
}
GLProgram >> errorLinkingFailed [

	^ (GLProgramLinkingFailed program: self infoLog: self getInfoLog) signal
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/3/2020 16:55'
}
GLProgram >> getAttribute: attributeName [

	IntegerArray new: 1 during: [:result |
		GL getProgramiv: id with: attributeName with: result.
		^ result first]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/3/2020 15:36'
}
GLProgram >> getBinary [

	| binaryLength |
	binaryLength := self getAttribute: GL_PROGRAM_BINARY_LENGTH.
	binaryLength <= 0 ifTrue: [^ #[]].
	IntegerArray new: 1 during: [:pFormat |
		ByteArray new: binaryLength during: [:result |
			GL getProgramBinary: id with: binaryLength with: nil with: pFormat with: result.
			^  pFormat first -> result]]
]

{
	#category : #'error handling',
	#timestamp : 'stlu 11/16/2020 13:52'
}
GLProgram >> getInfoLog [

	ByteArray new: self getInfoLogLength during: [:result |
		GL getProgramInfoLog: id with: result size with: nil with: result.
		^ result allButLast "remove null-terminator" utf8Decoded withSqueakLineEndings]
]

{
	#category : #'error handling',
	#timestamp : 'stlu 10/28/2020 14:37'
}
GLProgram >> getInfoLogLength [

	^ self getAttribute: GL_INFO_LOG_LENGTH
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/27/2020 12:27'
}
GLProgram >> getNumAttributes [

	^ self getAttribute: GL_ACTIVE_ATTRIBUTES
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/27/2020 12:28'
}
GLProgram >> getNumUniforms [

	^ self getAttribute: GL_ACTIVE_UNIFORMS
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 15:50'
}
GLProgram >> initialize [

	super initialize.
	shaders := Set new
]

{
	#category : #testing,
	#timestamp : 'stlu 10/27/2020 12:17'
}
GLProgram >> isFlaggedForDeletion [

	^ (self getAttribute: GL_DELETE_STATUS) = GL_TRUE
]

{
	#category : #testing,
	#timestamp : 'stlu 10/29/2020 12:16'
}
GLProgram >> isProgram [

	^ true
]

{
	#category : #testing,
	#timestamp : 'stlu 11/3/2020 15:37'
}
GLProgram >> isValid [

	GL validateProgram: id.
	^ (self getAttribute: GL_VALIDATE_STATUS) = GL_TRUE
]

{
	#category : #testing,
	#timestamp : 'stlu 10/27/2020 12:17'
}
GLProgram >> lastLinkingSucceeded [

	^ (self getAttribute: GL_LINK_STATUS) = GL_TRUE
]

{
	#category : #actions,
	#timestamp : 'stlu 11/3/2020 15:37'
}
GLProgram >> link [

	GL linkProgram: id.
	self lastLinkingSucceeded ifFalse: [
		self errorLinkingFailed]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLProgram >> shaders [

	^ shaders
]

{
	#category : #activation,
	#timestamp : 'stlu 11/6/2020 15:04'
}
GLProgram >> use [

	self class use: id
]

{
	#category : #activation,
	#timestamp : 'stlu 11/13/2020 16:20'
}
GLProgram >> useDuring: aBlock [

	| previousID |
	self flag: #todo. "Remember actual objects"
	previousID := self class current.
	previousID = id ifTrue: [^ aBlock value].
	self class use: id.
	aBlock ensure: [
		self class use: previousID]
]

{
	#category : #actions,
	#timestamp : 'stlu 10/27/2020 12:25'
}
GLProgram >> validate [

	self isValid ifFalse: [
		self notify: self infoLog]
]

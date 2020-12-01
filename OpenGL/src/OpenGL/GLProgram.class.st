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
	#timestamp : ''
}
GLProgram class >> allocate [

	^ GL createProgram
]

{
	#category : #activation,
	#timestamp : ''
}
GLProgram class >> current [

	^ GL getIntegerParameter: GL_CURRENT_PROGRAM
]

{
	#category : #activation,
	#timestamp : ''
}
GLProgram class >> use: id [

	GL useProgram: id
]

{
	#category : #actions,
	#timestamp : ''
}
GLProgram >> attachShader: glShader [

	GL attachShader: id with: glShader id.
	shaders add: glShader
]

{
	#category : #'error handling',
	#timestamp : ''
}
GLProgram >> errorLinkingFailed [

	^ (GLProgramLinkingFailed program: self infoLog: self getInfoLog) signal
]

{
	#category : #accessing,
	#timestamp : ''
}
GLProgram >> getAttribute: attributeName [

	IntegerArray new: 1 during: [:result |
		GL getProgramiv: id with: attributeName with: result.
		^ result first]
]

{
	#category : #accessing,
	#timestamp : ''
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
	#timestamp : ''
}
GLProgram >> getInfoLog [

	ByteArray new: self getInfoLogLength during: [:result |
		GL getProgramInfoLog: id with: result size with: nil with: result.
		^ result allButLast "remove null-terminator" utf8Decoded withSqueakLineEndings]
]

{
	#category : #'error handling',
	#timestamp : ''
}
GLProgram >> getInfoLogLength [

	^ self getAttribute: GL_INFO_LOG_LENGTH
]

{
	#category : #accessing,
	#timestamp : ''
}
GLProgram >> getNumAttributes [

	^ self getAttribute: GL_ACTIVE_ATTRIBUTES
]

{
	#category : #accessing,
	#timestamp : ''
}
GLProgram >> getNumUniforms [

	^ self getAttribute: GL_ACTIVE_UNIFORMS
]

{
	#category : #initialization,
	#timestamp : ''
}
GLProgram >> initialize [

	super initialize.
	shaders := Set new
]

{
	#category : #testing,
	#timestamp : ''
}
GLProgram >> isFlaggedForDeletion [

	^ (self getAttribute: GL_DELETE_STATUS) = GL_TRUE
]

{
	#category : #testing,
	#timestamp : ''
}
GLProgram >> isProgram [

	^ true
]

{
	#category : #testing,
	#timestamp : ''
}
GLProgram >> isValid [

	GL validateProgram: id.
	^ (self getAttribute: GL_VALIDATE_STATUS) = GL_TRUE
]

{
	#category : #testing,
	#timestamp : ''
}
GLProgram >> lastLinkingSucceeded [

	^ (self getAttribute: GL_LINK_STATUS) = GL_TRUE
]

{
	#category : #actions,
	#timestamp : ''
}
GLProgram >> link [

	GL linkProgram: id.
	self lastLinkingSucceeded ifFalse: [
		self errorLinkingFailed]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLProgram >> shaders [

	^ shaders
]

{
	#category : #accessing,
	#timestamp : ''
}
GLProgram >> shaders: anObject [

	shaders := anObject
]

{
	#category : #activation,
	#timestamp : ''
}
GLProgram >> use [

	self class use: id
]

{
	#category : #activation,
	#timestamp : ''
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
	#timestamp : ''
}
GLProgram >> validate [

	self isValid ifFalse: [
		self notify: self infoLog]
]

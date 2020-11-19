Class {
	#name : #GLProgram,
	#superclass : #GLObject,
	#instVars : [
		'shaders',
		'resources'
	],
	#category : #'OpenGL-Wrappers-Shaders'
}

{ #category : #allocation }
GLProgram class >> allocate [

	^ GL createProgram
]

{ #category : #activation }
GLProgram class >> current [

	^ GL getIntegerParameter: GL_CURRENT_PROGRAM
]

{ #category : #activation }
GLProgram class >> use: id [

	GL useProgram: id
]

{ #category : #actions }
GLProgram >> attachShader: glShader [

	GL attachShader: id with: glShader id.
	shaders add: glShader
]

{ #category : #'error handling' }
GLProgram >> errorLinkingFailed [

	^ (GLProgramLinkingFailed program: self infoLog: self getInfoLog) signal
]

{ #category : #accessing }
GLProgram >> getAttribute: attributeName [

	IntegerArray new: 1 during: [:result |
		GL getProgramiv: id with: attributeName with: result.
		^ result first]
]

{ #category : #accessing }
GLProgram >> getBinary [

	| binaryLength |
	binaryLength := self getAttribute: GL_PROGRAM_BINARY_LENGTH.
	binaryLength <= 0 ifTrue: [^ #[]].
	IntegerArray new: 1 during: [:pFormat |
		ByteArray new: binaryLength during: [:result |
			GL getProgramBinary: id with: binaryLength with: nil with: pFormat with: result.
			^  pFormat first -> result]]
]

{ #category : #'error handling' }
GLProgram >> getInfoLog [

	ByteArray new: self getInfoLogLength during: [:result |
		GL getProgramInfoLog: id with: result size with: nil with: result.
		^ result allButLast "remove null-terminator" utf8Decoded withSqueakLineEndings]
]

{ #category : #'error handling' }
GLProgram >> getInfoLogLength [

	^ self getAttribute: GL_INFO_LOG_LENGTH
]

{ #category : #accessing }
GLProgram >> getNumAttributes [

	^ self getAttribute: GL_ACTIVE_ATTRIBUTES
]

{ #category : #accessing }
GLProgram >> getNumUniforms [

	^ self getAttribute: GL_ACTIVE_UNIFORMS
]

{ #category : #initialization }
GLProgram >> initialize [

	super initialize.
	shaders := Set new
]

{ #category : #testing }
GLProgram >> isFlaggedForDeletion [

	^ (self getAttribute: GL_DELETE_STATUS) = GL_TRUE
]

{ #category : #testing }
GLProgram >> isProgram [

	^ true
]

{ #category : #testing }
GLProgram >> isValid [

	GL validateProgram: id.
	^ (self getAttribute: GL_VALIDATE_STATUS) = GL_TRUE
]

{ #category : #testing }
GLProgram >> lastLinkingSucceeded [

	^ (self getAttribute: GL_LINK_STATUS) = GL_TRUE
]

{ #category : #actions }
GLProgram >> link [

	GL linkProgram: id.
	self lastLinkingSucceeded ifFalse: [
		self errorLinkingFailed]
]

{ #category : #accessing }
GLProgram >> shaders [

	^ shaders
]

{ #category : #accessing }
GLProgram >> shaders: anObject [

	shaders := anObject
]

{ #category : #activation }
GLProgram >> use [

	self class use: id
]

{ #category : #activation }
GLProgram >> useDuring: aBlock [

	| previousID |
	self flag: #todo. "Remember actual objects"
	previousID := self class current.
	previousID = id ifTrue: [^ aBlock value].
	self class use: id.
	aBlock ensure: [
		self class use: previousID]
]

{ #category : #actions }
GLProgram >> validate [

	self isValid ifFalse: [
		self notify: self infoLog]
]

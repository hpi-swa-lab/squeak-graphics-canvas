Class {
	#name : #GLShader,
	#superclass : #GLObject,
	#instVars : [
		'source'
	],
	#category : #'OpenGL-Shaders'
}

{ #category : #compilation }
GLShader >> compile [

	GL glCompileShader: id.
	self lastCompilationSucceeded ifFalse: [
		self errorCompilationFailed]
]

{ #category : #'initialize-release' }
GLShader >> delete [

	GL glDeleteShader: id
]

{ #category : #compilation }
GLShader >> errorCompilationFailed [

	^ (GLShaderCompilationError shader: self infoLog: self getInfoLog) signal
]

{ #category : #testing }
GLShader >> exists [

	^ GL glIsShader: id
]

{ #category : #'accessing uncached' }
GLShader >> getAttribute: attributeName [

	| result |
	result := IntegerArray new: 1.
	GL glGetShaderiv: id with: attributeName with: result.
	^ result first
]

{ #category : #compilation }
GLShader >> getInfoLog [

	| length resultLength result |
	length := self getAttribute: GL_INFO_LOG_LENGTH.
	result := ByteArray new: length.
	resultLength := IntegerArray new: 1.
	GL glGetShaderInfoLog: id with: length with: resultLength with: result.
	^ (result first: resultLength) utf8Decoded
]

{ #category : #'accessing uncached' }
GLShader >> getSource [

	| length resultLength result |
	length := self getAttribute: GL_SHADER_SOURCE_LENGTH.
	result := ByteArray new: length.
	resultLength := IntegerArray new: 1.
	GL glGetShaderSource: id with: length with: resultLength with: result.
	^ (result first: resultLength) utf8Decoded
]

{ #category : #'accessing uncached' }
GLShader >> getType [

	^ self getAttribute: GL_SHADER_TYPE
]

{ #category : #'initialize-release' }
GLShader >> initialize [

	super initialize.
	source := ''.
	id := GL glCreateShader: self type
]

{ #category : #testing }
GLShader >> isFlaggedForDeletion [

	^ (self getAttribute: GL_DELETE_STATUS) = GL_TRUE
]

{ #category : #testing }
GLShader >> lastCompilationSucceeded [

	^ (self getAttribute: GL_COMPILE_STATUS) = GL_TRUE
]

{ #category : #'accessing uncached' }
GLShader >> setSource: aString [

	| utf8Bytes |
	utf8Bytes := aString utf8Encoded.
	
	ExternalData allocate: utf8Bytes size + 1 type: ExternalType string do: [:data |
		| arrayOfStrings |
		1 to: utf8Bytes size do: [:index |
			data getHandle byteAt: index put: (utf8Bytes at: index)].
		data getHandle byteAt: utf8Bytes size + 1 put: 0.
		
		arrayOfStrings := (ByteArray new: ExternalType void asPointerType byteSize)
						 	pointerAt: 1 put: data getHandle;
							yourself.
	
		GL glShaderSource: id with: 1 with: arrayOfStrings with: nil]
]

{ #category : #accessing }
GLShader >> source [

	^ source
]

{ #category : #accessing }
GLShader >> source: aString [

	self setSource: aString.
	source := aString
]

{ #category : #accessing }
GLShader >> type [

	self subclassResponsibility
]

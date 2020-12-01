Class {
	#name : #GLShader,
	#superclass : #GLObject,
	#instVars : [
		'source'
	],
	#category : #'OpenGL-Wrappers-Shaders',
	#commentStamp : ''
}

{
	#category : #allocation,
	#timestamp : ''
}
GLShader class >> allocate [

	^ GL createShader: self type
]

{
	#category : #accessing,
	#timestamp : ''
}
GLShader class >> type [

	self subclassResponsibility
]

{
	#category : #compilation,
	#timestamp : ''
}
GLShader >> compile [

	GL compileShader: id.
	self lastCompilationSucceeded ifFalse: [
		self errorCompilationFailed]
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLShader >> delete [

	GL deleteShader: id
]

{
	#category : #compilation,
	#timestamp : ''
}
GLShader >> errorCompilationFailed [

	^ (GLShaderCompilationFailed shader: self infoLog: self getInfoLog) signal
]

{
	#category : #testing,
	#timestamp : ''
}
GLShader >> exists [

	^ GL isShader: id
]

{
	#category : #'accessing uncached',
	#timestamp : ''
}
GLShader >> getAttribute: attributeName [

	IntegerArray new: 1 during: [:result |
		GL getShaderiv: id with: attributeName with: result.
		^ result first]
]

{
	#category : #compilation,
	#timestamp : ''
}
GLShader >> getInfoLog [

	ByteArray new: self getInfoLogLength during: [:result |
		GL getShaderInfoLog: id with: result size with: nil with: result.
		^ result allButLast "remove null-terminator" utf8Decoded withSqueakLineEndings]
]

{
	#category : #compilation,
	#timestamp : ''
}
GLShader >> getInfoLogLength [

	^ self getAttribute: GL_INFO_LOG_LENGTH
]

{
	#category : #'accessing uncached',
	#timestamp : ''
}
GLShader >> getSource [

	ByteArray new: self getSourceLength during: [:result |
		GL getShaderSource: id with: result size with: nil with: result.
		^ result allButLast "remove null-terminator" utf8Decoded withSqueakLineEndings]
]

{
	#category : #'accessing uncached',
	#timestamp : ''
}
GLShader >> getSourceLength [

	^ self getAttribute: GL_SHADER_SOURCE_LENGTH
]

{
	#category : #'accessing uncached',
	#timestamp : ''
}
GLShader >> getType [

	^ self getAttribute: GL_SHADER_TYPE
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLShader >> initialize [

	super initialize.
	source := ''
]

{
	#category : #testing,
	#timestamp : ''
}
GLShader >> isFlaggedForDeletion [

	^ (self getAttribute: GL_DELETE_STATUS) = GL_TRUE
]

{
	#category : #testing,
	#timestamp : ''
}
GLShader >> isShader [

	^ true
]

{
	#category : #testing,
	#timestamp : ''
}
GLShader >> lastCompilationSucceeded [

	^ (self getAttribute: GL_COMPILE_STATUS) = GL_TRUE
]

{
	#category : #'accessing uncached',
	#timestamp : ''
}
GLShader >> setSource: aString [

	| utf8Bytes |
	utf8Bytes := aString withUnixLineEndings utf8Encoded.
	
	ExternalData allocate: utf8Bytes size + 1 type: ExternalType string do: [:data |
		| arrayOfStrings |
		1 to: utf8Bytes size do: [:index |
			data getHandle byteAt: index put: (utf8Bytes at: index)].
		data getHandle byteAt: utf8Bytes size + 1 put: 0.
		
		arrayOfStrings := (ByteArray new: ExternalType void asPointerType byteSize)
						 	pointerAt: 1 put: data getHandle;
							yourself.
	
		GL shaderSource: id with: 1 with: arrayOfStrings with: nil]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLShader >> source [

	^ source
]

{
	#category : #accessing,
	#timestamp : ''
}
GLShader >> source: aString [

	self setSource: aString.
	source := aString
]

{
	#category : #accessing,
	#timestamp : ''
}
GLShader >> type [

	^ self class type
]

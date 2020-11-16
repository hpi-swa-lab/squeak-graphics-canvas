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
	#timestamp : 'stlu 11/3/2020 15:40'
}
GLShader class >> allocate [

	^ GL createShader: self type
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/28/2020 17:51'
}
GLShader class >> type [

	self subclassResponsibility
]

{
	#category : #compilation,
	#timestamp : 'stlu 11/3/2020 15:39'
}
GLShader >> compile [

	GL compileShader: id.
	self lastCompilationSucceeded ifFalse: [
		self errorCompilationFailed]
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/3/2020 15:39'
}
GLShader >> delete [

	GL deleteShader: id
]

{
	#category : #compilation,
	#timestamp : 'stlu 10/28/2020 13:27'
}
GLShader >> errorCompilationFailed [

	^ (GLShaderCompilationFailed shader: self infoLog: self getInfoLog) signal
]

{
	#category : #testing,
	#timestamp : 'stlu 11/3/2020 15:39'
}
GLShader >> exists [

	^ GL isShader: id
]

{
	#category : #'accessing uncached',
	#timestamp : 'stlu 11/3/2020 15:39'
}
GLShader >> getAttribute: attributeName [

	IntegerArray new: 1 during: [:result |
		GL getShaderiv: id with: attributeName with: result.
		^ result first]
]

{
	#category : #compilation,
	#timestamp : 'stlu 11/16/2020 13:51'
}
GLShader >> getInfoLog [

	ByteArray new: self getInfoLogLength during: [:result |
		GL getShaderInfoLog: id with: result size with: nil with: result.
		^ result allButLast "remove null-terminator" utf8Decoded withSqueakLineEndings]
]

{
	#category : #compilation,
	#timestamp : 'stlu 10/28/2020 14:40'
}
GLShader >> getInfoLogLength [

	^ self getAttribute: GL_INFO_LOG_LENGTH
]

{
	#category : #'accessing uncached',
	#timestamp : 'stlu 11/16/2020 13:50'
}
GLShader >> getSource [

	ByteArray new: self getSourceLength during: [:result |
		GL getShaderSource: id with: result size with: nil with: result.
		^ result allButLast "remove null-terminator" utf8Decoded withSqueakLineEndings]
]

{
	#category : #'accessing uncached',
	#timestamp : 'stlu 10/28/2020 14:42'
}
GLShader >> getSourceLength [

	^ self getAttribute: GL_SHADER_SOURCE_LENGTH
]

{
	#category : #'accessing uncached',
	#timestamp : 'stlu 10/26/2020 13:07'
}
GLShader >> getType [

	^ self getAttribute: GL_SHADER_TYPE
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 10/28/2020 17:58'
}
GLShader >> initialize [

	super initialize.
	source := ''
]

{
	#category : #testing,
	#timestamp : 'stlu 10/26/2020 13:53'
}
GLShader >> isFlaggedForDeletion [

	^ (self getAttribute: GL_DELETE_STATUS) = GL_TRUE
]

{
	#category : #testing,
	#timestamp : 'stlu 10/29/2020 12:16'
}
GLShader >> isShader [

	^ true
]

{
	#category : #testing,
	#timestamp : 'stlu 10/26/2020 13:55'
}
GLShader >> lastCompilationSucceeded [

	^ (self getAttribute: GL_COMPILE_STATUS) = GL_TRUE
]

{
	#category : #'accessing uncached',
	#timestamp : 'stlu 11/16/2020 13:50'
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
	#timestamp : 'stlu 10/26/2020 13:00'
}
GLShader >> source [

	^ source
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/26/2020 13:51'
}
GLShader >> source: aString [

	self setSource: aString.
	source := aString
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/28/2020 17:51'
}
GLShader >> type [

	^ self class type
]

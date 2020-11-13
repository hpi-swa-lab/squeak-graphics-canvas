Class {
	#name : #GLProgram,
	#superclass : #GLObject,
	#instVars : [
		'shaders'
	],
	#category : #'OpenGL-Wrappers-Shaders',
	#commentStamp : ''
}

{
	#category : #private,
	#timestamp : 'stlu 11/3/2020 15:38'
}
GLProgram class >> allocate [

	^ GL createProgram
]

{
	#category : #generation,
	#timestamp : ''
}
GLProgram class >> attributes [
	" return the names of all attributes your shader possesses here "

	^ #()
]

{
	#category : #generation,
	#timestamp : ''
}
GLProgram class >> compileAccessors [
	" call this method to automatically generate accessors for your attributes and uniforms "

	| source |
	self addInstVarNames: ((self uniforms, self attributes) collect: [:name | name, 'Location']).
	
	source := String streamContents: [:stream |
		stream
			nextPutAll: 'initializeLocations';
			cr;
			crtab;
			nextPutAll: 'super initializeLocations.'.
		
		stream crtab.
		self uniforms do: [:uniform |
			stream crtab;
				nextPutAll: uniform;
				nextPutAll: 'Location := self registerUniform: '; store: uniform; nextPut: $.].
		
		stream crtab.
		self attributes do: [:attribute |
			stream crtab;
				nextPutAll: attribute;
				nextPutAll: 'Location := self registerAttribute: '; store: attribute; nextPut: $.]].
		
	self compile: source classified: 'generated'.
	
	self uniforms do: [:uniform |
		source := String streamContents: [:stream |
			stream
				nextPutAll: uniform; nextPut: $:; nextPutAll: ' anObject';
				cr; crtab;
				nextPutAll: 'self uniform: '; nextPutAll: uniform; nextPutAll: 'Location value: anObject'].
		self compile: source classified: 'generated'].
	
	self attributes do: [:attribute |
		source := String streamContents: [:stream |
			stream
				nextPutAll: attribute;
				nextPutAll: 'Location';
				cr; crtab;
				nextPutAll: '^ '; nextPutAll: attribute; nextPutAll: 'Location'].
		self compile: source classified: 'generated']
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 10/22/2020 16:59'
}
GLProgram class >> context: glContext [

	^ self
		context: glContext
		shaders: {
			GLVertexShader context: glContext code: self vertexShader withUnixLineEndings.
			GLFragmentShader context: glContext code: self fragmentShader withUnixLineEndings.
		}
]

{
	#category : #'instance creation',
	#timestamp : ''
}
GLProgram class >> context: glContext shaders: aCollection [

	^ (super context: glContext)
		shaders: aCollection;
		setUpProgram;
		yourself
]

{
	#category : #activation,
	#timestamp : 'stlu 11/6/2020 15:05'
}
GLProgram class >> current [

	^ GL getIntegerParameter: GL_CURRENT_PROGRAM
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLProgram class >> fragmentShader [

	self subclassResponsibility
]

{
	#category : #generation,
	#timestamp : ''
}
GLProgram class >> uniforms [
	" return the names of all uniforms your shader possesses here "

	^ #()
]

{
	#category : #activation,
	#timestamp : 'stlu 11/6/2020 15:05'
}
GLProgram class >> use: id [

	GL useProgram: id
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLProgram class >> vertexShader [

	self subclassResponsibility
]

{
	#category : #linking,
	#timestamp : 'stlu 11/3/2020 15:36'
}
GLProgram >> attachShader: glShader [

	GL attachShader: id with: glShader id.
	shaders add: glShader
]

{
	#category : #linking,
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
	#category : #linking,
	#timestamp : 'stlu 11/3/2020 15:36'
}
GLProgram >> getInfoLog [

	ByteArray new: self getInfoLogLength during: [:result |
		GL getProgramInfoLog: id with: result size with: nil with: result.
		^ result allButLast "remove null-terminator" utf8Decoded]
]

{
	#category : #linking,
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
	#category : #uniforms,
	#timestamp : 'stlu 10/28/2020 12:44'
}
GLProgram >> getUniform: index [

	self notYetImplemented
]

{
	#category : #uniforms,
	#timestamp : 'stlu 10/28/2020 12:07'
}
GLProgram >> getUniformNamed: aSymbol [

	self notYetImplemented
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/3/2020 16:51'
}
GLProgram >> initialize [

	super initialize.
	shaders := Set new.
	self initializeShaders.
	self initializeLocations
]

{
	#category : #'initialize-release',
	#timestamp : ''
}
GLProgram >> initializeLocations [

	
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/3/2020 16:50'
}
GLProgram >> initializeShaders [

	{
		GLVertexShader create
			source: self class vertexShader withUnixLineEndings;
			compile;
			yourself.
		GLFragmentShader create
			source: self class fragmentShader withUnixLineEndings;
			compile;
			yourself
	} do: [:shader | self attachShader: shader].
	
	self link.
	
	shaders do: [:shader | shader delete]
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
	#category : #linking,
	#timestamp : 'stlu 11/3/2020 15:37'
}
GLProgram >> link [

	GL linkProgram: id.
	self lastLinkingSucceeded ifFalse: [
		self errorLinkingFailed]
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/3/2020 15:38'
}
GLProgram >> registerAttribute: aString [

	| location |
	location := GL getAttribLocation: id with: aString.
	self assert: location >= 0.
	^ location
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/3/2020 15:38'
}
GLProgram >> registerUniform: aString [

	| location |
	location := GL getUniformLocation: id with: aString.
	self assert: location >= 0.
	^ location
]

{
	#category : #uniforms,
	#timestamp : 'stlu 10/28/2020 12:44'
}
GLProgram >> setUniform: index to: anObject [

	self notYetImplemented
]

{
	#category : #uniforms,
	#timestamp : 'stlu 10/28/2020 12:07'
}
GLProgram >> setUniformNamed: aSymbol to: anObject [

	self notYetImplemented
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
	#category : #usage,
	#timestamp : 'stlu 10/27/2020 11:41'
}
GLProgram >> uniform: location value: anObject [

	self assert: location >= 0.
	anObject putAtUniform: location
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
	#timestamp : 'stlu 11/6/2020 15:04'
}
GLProgram >> useDuring: aBlock [

	| previousID |
	self flag: #todo. "Remember actual objects"
	previousID := self class current.
	previousID = id ifTrue: [^ aBlock value].
	self class use: previousID id.
	aBlock ensure: [
		self use: previousID]
]

{
	#category : #usage,
	#timestamp : 'stlu 10/27/2020 12:25'
}
GLProgram >> validate [

	self isValid ifFalse: [
		self notify: self infoLog]
]

{
	#category : #usage,
	#timestamp : 'stlu 11/3/2020 17:04'
}
GLProgram >> vertexAttrib: position value: value components: components stride: stride offset: offset [

 	| byteOffset |
	self flag: #todo. "Broken #isGLBuffer #glType #bytesPerElement"
	byteOffset := ExternalAddress new fromInteger: offset * value bytesPerElement.
	GL enableVertexAttribArray: position.
	GL vertexAttribPointer: position
		with: components
		with: value glType
		with: GL_FALSE
		with: stride * value bytesPerElement
		with: byteOffset
]

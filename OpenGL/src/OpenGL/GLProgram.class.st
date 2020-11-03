Class {
	#name : #GLProgram,
	#superclass : #GLObject,
	#instVars : [
		'shaders'
	],
	#category : #'OpenGL-Wrappers-Shaders'
}

{ #category : #private }
GLProgram class >> allocate [

	^ GL createProgram
]

{ #category : #generation }
GLProgram class >> attributes [
	" return the names of all attributes your shader possesses here "

	^ #()
]

{ #category : #generation }
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

{ #category : #'instance creation' }
GLProgram class >> context: glContext [

	^ self
		context: glContext
		shaders: {
			GLVertexShader context: glContext code: self vertexShader withUnixLineEndings.
			GLFragmentShader context: glContext code: self fragmentShader withUnixLineEndings.
		}
]

{ #category : #'instance creation' }
GLProgram class >> context: glContext shaders: aCollection [

	^ (super context: glContext)
		shaders: aCollection;
		setUpProgram;
		yourself
]

{ #category : #'shader code' }
GLProgram class >> fragmentShader [

	self subclassResponsibility
]

{ #category : #activation }
GLProgram class >> getCurrentProgramId [

	^ GL getIntegerParameter: GL_CURRENT_PROGRAM
]

{ #category : #generation }
GLProgram class >> uniforms [
	" return the names of all uniforms your shader possesses here "

	^ #()
]

{ #category : #activation }
GLProgram class >> use: glProgram [

	self flag: #todo. "Remember actual objects"
	self useId: glProgram id
]

{ #category : #activation }
GLProgram class >> use: glProgram during: aBlock [

	| previousProgram |
	self flag: #todo. "Remember actual objects"
	(previousProgram := self getCurrentProgramId) = glProgram id ifTrue: [^ aBlock value].
	self useId: glProgram id.
	aBlock ensure: [self useId: previousProgram]
]

{ #category : #activation }
GLProgram class >> useId: anInteger [

	GL useProgram: anInteger
]

{ #category : #'shader code' }
GLProgram class >> vertexShader [

	self subclassResponsibility
]

{ #category : #linking }
GLProgram >> attachShader: glShader [

	GL attachShader: id with: glShader id.
	shaders add: glShader
]

{ #category : #linking }
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

{ #category : #linking }
GLProgram >> getInfoLog [

	ByteArray new: self getInfoLogLength during: [:result |
		GL getProgramInfoLog: id with: result size with: nil with: result.
		^ result allButLast "remove null-terminator" utf8Decoded]
]

{ #category : #linking }
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

{ #category : #uniforms }
GLProgram >> getUniform: index [

	self notYetImplemented
]

{ #category : #uniforms }
GLProgram >> getUniformNamed: aSymbol [

	self notYetImplemented
]

{ #category : #'initialize-release' }
GLProgram >> initialize [

	super initialize.
	shaders := Set new.
	self initializeShaders.
	self initializeLocations
]

{ #category : #'initialize-release' }
GLProgram >> initializeLocations [

	
]

{ #category : #'initialize-release' }
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

{ #category : #linking }
GLProgram >> link [

	GL linkProgram: id.
	self lastLinkingSucceeded ifFalse: [
		self errorLinkingFailed]
]

{ #category : #'initialize-release' }
GLProgram >> registerAttribute: aString [

	| location |
	location := GL getAttribLocation: id with: aString.
	self assert: location >= 0.
	^ location
]

{ #category : #'initialize-release' }
GLProgram >> registerUniform: aString [

	| location |
	location := GL getUniformLocation: id with: aString.
	self assert: location >= 0.
	^ location
]

{ #category : #uniforms }
GLProgram >> setUniform: index to: anObject [

	self notYetImplemented
]

{ #category : #uniforms }
GLProgram >> setUniformNamed: aSymbol to: anObject [

	self notYetImplemented
]

{ #category : #accessing }
GLProgram >> shaders [

	^ shaders
]

{ #category : #accessing }
GLProgram >> shaders: anObject [

	shaders := anObject
]

{ #category : #usage }
GLProgram >> uniform: location value: anObject [

	self assert: location >= 0.
	anObject putAtUniform: location
]

{ #category : #activation }
GLProgram >> use [

	self class use: self
]

{ #category : #activation }
GLProgram >> useDuring: aBlock [

	self class use: self during: aBlock
]

{ #category : #usage }
GLProgram >> validate [

	self isValid ifFalse: [
		self notify: self infoLog]
]

{ #category : #usage }
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

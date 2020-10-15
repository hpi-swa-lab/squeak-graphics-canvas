Class {
	#name : #GLProgram,
	#superclass : #GLObject,
	#instVars : [
		'shaders'
	],
	#category : #'OpenGL-Shaders'
}

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
			VertexShader context: glContext code: self vertexShader withUnixLineEndings.
			FragmentShader context: glContext code: self fragmentShader withUnixLineEndings.
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

{ #category : #generation }
GLProgram class >> uniforms [
	" return the names of all uniforms your shader possesses here "

	^ #()
]

{ #category : #'shader code' }
GLProgram class >> vertexShader [

	self subclassResponsibility
]

{ #category : #binding }
GLProgram >> bind: anID [

	gl glUseProgram: anID
]

{ #category : #binding }
GLProgram >> bindingEnum [

	^ GL_CURRENT_PROGRAM
]

{ #category : #usage }
GLProgram >> getProgramInfoLog: program [

	| infoLogLength infoLog |
	infoLogLength := 4096.
	infoLog := ExternalData fromHandle: (ExternalAddress gcallocate: infoLogLength) type: ExternalType string.
	gl glGetProgramInfoLog: program with: infoLogLength with: nil with: infoLog.
	^ infoLog fromCString
]

{ #category : #'initialize-release' }
GLProgram >> initializeLocations [

	
]

{ #category : #'initialize-release' }
GLProgram >> initializeShaders [

	| shaders status |
	shaders := {
		VertexShader context: gl code: self class vertexShader withUnixLineEndings.
		FragmentShader context: gl code: self class fragmentShader withUnixLineEndings.
	}.
	
	"attaching shaders"
	shaders do: [:shader |
		gl glAttachShader: id with: shader id.
		gl checkForError].
	
	"linking program"
	gl glLinkProgram: id.
	gl checkForError.
	status := IntegerArray new: 1.
	gl glGetProgramiv: id with: GL_LINK_STATUS with: status.
	gl checkForError.
	status first = 0 ifTrue: [self error: 'failed to link shader: ', (self getProgramInfoLog: id)].
	
	"deleting shaders"
	shaders do: [:shader |
		gl glDeleteShader: shader id.
		gl checkForError]
]

{ #category : #'initialize-release' }
GLProgram >> initializeWithContext: glContext [

	glContext assertIsCurrent.

	super initializeWithContext: glContext.
	id := gl glCreateProgram.
	self initializeShaders.
	self initializeLocations
]

{ #category : #'initialize-release' }
GLProgram >> registerAttribute: aString [

	| location |
	location := gl glGetAttribLocation: id with: aString.
	self assert: location >= 0.
	^ location
]

{ #category : #'initialize-release' }
GLProgram >> registerUniform: aString [

	| location |
	location := gl glGetUniformLocation: id with: aString.
	self assert: location >= 0.
	^ location
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
	anObject putAtGL: gl Uniform: location
]

{ #category : #usage }
GLProgram >> use [

	self bind
]

{ #category : #usage }
GLProgram >> vertexAttrib: position value: value components: components stride: stride offset: offset [

 	| byteOffset |
	byteOffset := ExternalAddress new fromInteger: offset * value bytesPerElement.
	gl glEnableVertexAttribArray: position.
	value isGLBuffer ifTrue: [
		gl glVertexAttribPointer: position
			with: components
			with: value glType
			with: GL_FALSE
			with: stride * value bytesPerElement
			with: byteOffset ]
			
]

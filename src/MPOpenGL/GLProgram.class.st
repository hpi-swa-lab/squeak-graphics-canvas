Class {
	#name : #GLProgram,
	#superclass : #GLObject,
	#instVars : [
		'shaders'
	],
	#category : #'MPOpenGL-Shaders'
}

{ #category : #'instance creation' }
GLProgram class >> context: glContext [

	^ self
		context: glContext
		shaders: {
			VertexShader context: glContext code: self vertexShader.
			FragmentShader context: glContext code: self fragmentShader
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

{ #category : #'shader code' }
GLProgram class >> vertexShader [

	self subclassResponsibility
]

{ #category : #'initialize-release' }
GLProgram >> attachShaders [

	shaders do: [:shader |
		gl glAttachShader: id with: shader id.
		gl checkForError]
]

{ #category : #'initialize-release' }
GLProgram >> deleteShaders [

	shaders do: [:shader |
		gl glDeleteShader: shader id.
		gl checkForError]
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
GLProgram >> setUpProgram [

	| status |
	gl checkForError.
	id := gl glCreateProgram.
	gl checkForError.
	self attachShaders.
	gl glLinkProgram: id.
	gl checkForError.
	status := IntegerArray new: 1.
	gl glGetProgramiv: id with: GL_LINK_STATUS with: status.
	gl checkForError.
	status first = 0 ifTrue: [self error: 'failed to link shader: ', (self getProgramInfoLog: id)].
	self deleteShaders.
	self initializeLocations
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

	gl glUseProgram: id
]

{ #category : #usage }
GLProgram >> vertexAttrib: position value: value stride: stride offset: offset [

 	| byteOffset |
	byteOffset := ExternalAddress new fromInteger: offset * value bytesPerElement.
	gl glEnableVertexAttribArray: position.
	value isGLBuffer ifTrue: [
		gl glVertexAttribPointer: position
			with: value componentsPerVertex
			with: value glType
			with: GL_FALSE
			with: stride * value bytesPerElement
			with: byteOffset ]
			
]

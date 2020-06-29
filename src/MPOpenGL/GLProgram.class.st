Class {
	#name : #GLProgram,
	#superclass : #AbstractGLObject,
	#instVars : [
		'shaders'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'MPOpenGL-Shaders'
}

{ #category : #'instance creation' }
GLProgram class >> newFor: openGlInterface shaders: aCollection [

	^ self new
		gl: openGlInterface;
		shaders: aCollection;
		setUpProgram;
		yourself
]

{ #category : #'initialize-release' }
GLProgram >> attachShaders [

	^ shaders collect: [:shader |
		gl glAttachShader: id with: shader created]
]

{ #category : #'initialize-release' }
GLProgram >> createProgram [

	id := gl glCreateProgram
]

{ #category : #'initialize-release' }
GLProgram >> deleteShaders: someShaders [

	someShaders do: [:shader |
		gl glDeleteShader: shader]
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
GLProgram >> setUpProgram [

	| attachedShaders status |
	self createProgram.
	self shareGlInstance.
	attachedShaders := self attachShaders.
	gl glLinkProgram: id.
	status := IntegerArray new: 1.
	gl glGetProgramiv: id with: GL_LINK_STATUS with: status.
	status first = 0 ifTrue: [self error: 'failed to link shader: ', (self getProgramInfoLog: id)].
	self deleteShaders: attachedShaders.
]

{ #category : #accessing }
GLProgram >> shaders [

	^ shaders
]

{ #category : #accessing }
GLProgram >> shaders: anObject [

	shaders := anObject
]

{ #category : #'initialize-release' }
GLProgram >> shareGlInstance [

	shaders do: [:shader |
		shader gl: gl]
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
GLProgram >> vertexAttib: position value: value stride: stride offset: offset [

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

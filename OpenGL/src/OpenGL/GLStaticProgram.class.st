Class {
	#name : #GLStaticProgram,
	#superclass : #GLProgram,
	#category : #'OpenGL-Wrappers-Shaders',
	#commentStamp : ''
}

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 15:50'
}
GLStaticProgram >> initialize [

	super initialize.
	self initializeShaders.
	self initializeLocations
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 15:50'
}
GLStaticProgram >> initializeLocations [

	
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 15:50'
}
GLStaticProgram >> initializeShaders [

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
	#category : #resources,
	#timestamp : 'stlu 11/13/2020 15:52'
}
GLStaticProgram >> registerAttribute: aString [

	| location |
	location := GL getAttribLocation: id with: aString.
	self assert: location >= 0.
	^ location
]

{
	#category : #resources,
	#timestamp : 'stlu 11/13/2020 15:52'
}
GLStaticProgram >> registerUniform: aString [

	| location |
	location := GL getUniformLocation: id with: aString.
	self assert: location >= 0.
	^ location
]

{
	#category : #resources,
	#timestamp : 'stlu 11/13/2020 15:51'
}
GLStaticProgram >> uniform: location value: anObject [

	self assert: location >= 0.
	anObject putAtUniform: location
]

{
	#category : #resources,
	#timestamp : 'stlu 11/13/2020 16:10'
}
GLStaticProgram >> vertexAttrib: index components: numComponents stride: byteStride offset: byteOffset [

	self flag: #todo. "Hacky and broken. Wild assumptions."
	GL enableVertexAttribArray: index.
	GL vertexAttribPointer: index
		with: numComponents
		with: GL_FLOAT "HACK until proper type dispatching"
		with: false
		with: byteStride
		with: (ExternalAddress new fromInteger: byteOffset)
]

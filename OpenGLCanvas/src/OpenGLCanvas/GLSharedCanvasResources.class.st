Class {
	#name : #GLSharedCanvasResources,
	#superclass : #Object,
	#instVars : [
		'vao',
		'vbo',
		'textureProgram',
		'outlineProgram',
		'rectangleProgram',
		'fonts',
		'fontProgram'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGLCanvas-Core'
}

{ #category : #accessing }
GLSharedCanvasResources >> font: aFont [

	| font |
	font := aFont ifNil: [TextStyle defaultFont].
	
	^ fonts at: font ifAbsentPut: [GLBitmapFont new font: font]
]

{ #category : #accessing }
GLSharedCanvasResources >> fontProgram [

	^ fontProgram
]

{ #category : #initialization }
GLSharedCanvasResources >> initialize [

	super initialize.
	
	fonts := Dictionary new.
	
	self initializePrograms.
	self initializeBuffers.
	self initializeProgramAttributes
]

{ #category : #initialization }
GLSharedCanvasResources >> initializeBuffers [

	vao := GLVertexArray create.
	vao bind.
	vbo := GLBuffer create.
	vbo
		data: #(
			0.0 0.0 0.0 0.0
			1.0 0.0 1.0 0.0
			0.0 1.0 0.0 1.0
			1.0 1.0 1.0 1.0 ) asFloat32Array
		usage: GL_STATIC_DRAW
		componentsPerVertex: 4.
	GL checkForError
]

{ #category : #initialization }
GLSharedCanvasResources >> initializeProgramAttributes [

	textureProgram boundDuring: [
		textureProgram image: 0.
		textureProgram vertexAttrib: textureProgram aPosLocation value: vbo components: 2 stride: 4 offset: 0.
		textureProgram vertexAttrib: textureProgram aTexCoordsLocation value: vbo components: 2 stride: 4 offset: 2.
		GL checkForError].
	
	outlineProgram vertexAttrib: outlineProgram aPosLocation value: vbo components: 2 stride: 4 offset: 0.
	GL checkForError.
	outlineProgram vertexAttrib: outlineProgram aTexCoordsLocation value: vbo components: 2 stride: 4 offset: 2.
	GL checkForError.
	
	rectangleProgram boundDuring: [
		rectangleProgram vertexAttrib: rectangleProgram aPosLocation value: vbo components: 2 stride: 4 offset: 0]
]

{ #category : #initialization }
GLSharedCanvasResources >> initializePrograms [

	textureProgram := GL getShaderProgram: GLCanvasTextureProgram.
	outlineProgram := GL getShaderProgram: GLCanvasOutlineProgram.
	rectangleProgram := GL getShaderProgram: GLCanvasRectangleProgram.
	fontProgram := GL getShaderProgram: GLCanvasFontProgram.
	GL checkForError
]

{ #category : #accessing }
GLSharedCanvasResources >> outlineProgram [

	^ outlineProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> rectangleProgram [

	^ rectangleProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> textureProgram [

	^ textureProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> vao [

	^ vao
]

{ #category : #accessing }
GLSharedCanvasResources >> vao: anObject [

	vao := anObject.
]

{ #category : #accessing }
GLSharedCanvasResources >> vbo [

	^ vbo
]

{ #category : #accessing }
GLSharedCanvasResources >> vbo: anObject [

	vbo := anObject.
]

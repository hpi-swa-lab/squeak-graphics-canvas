Class {
	#name : #GLCanvasPrograms,
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
	#category : #'MPOpenGL-Canvas'
}

{ #category : #'instance creation' }
GLCanvasPrograms class >> create [

	^ self new
]

{ #category : #accessing }
GLCanvasPrograms >> font: aFont [

	^ fonts at: (aFont ifNil: [TextStyle defaultFont]) ifAbsentPut: [GLBitmapFont new font: aFont]
]

{ #category : #accessing }
GLCanvasPrograms >> fontProgram [

	^ fontProgram
]

{ #category : #initialization }
GLCanvasPrograms >> initialize [

	super initialize.
	
	fonts := Dictionary new.
	
	self initializePrograms.
	self initializeBuffers.
	self initializeProgramAttributes
]

{ #category : #initialization }
GLCanvasPrograms >> initializeBuffers [

	vao := GL value createObject: GLVertexArrayObject.
	vao bind.
	vbo := GL value createObject: GLVertexBufferObject.
	vbo
		data: {
			0. 0. 0. 0 .
			1. 0. 1. 0.
			0. 1. 0. 1.
			1. 1. 1. 1.
		} asFloat32Array
		usage: GL_STATIC_DRAW
		componentsPerVertex: 4.
	GL value checkForError
]

{ #category : #initialization }
GLCanvasPrograms >> initializeProgramAttributes [

	textureProgram boundDuring: [
		textureProgram image: 0.
		textureProgram vertexAttrib: textureProgram aPosLocation value: vbo stride: 4 offset: 0.
		textureProgram vertexAttrib: textureProgram aTexCoordsLocation value: vbo stride: 4 offset: 2.
		GL value checkForError].
	
	outlineProgram vertexAttrib: outlineProgram aPosLocation value: vbo stride: 4 offset: 0.
	GL value checkForError.
	outlineProgram vertexAttrib: outlineProgram aTexCoordsLocation value: vbo stride: 4 offset: 2.
	GL value checkForError.
	
	rectangleProgram boundDuring: [
		rectangleProgram vertexAttrib: rectangleProgram aPosLocation value: vbo stride: 4 offset: 0]
]

{ #category : #initialization }
GLCanvasPrograms >> initializePrograms [

	textureProgram := GL value getShaderProgram: GLCanvasTextureProgram.
	outlineProgram := GL value getShaderProgram: GLCanvasOutlineProgram.
	rectangleProgram := GL value getShaderProgram: GLCanvasRectangleProgram.
	fontProgram := GL value getShaderProgram: GLCanvasFontProgram.
	GL value checkForError
]

{ #category : #accessing }
GLCanvasPrograms >> outlineProgram [

	^ outlineProgram
]

{ #category : #accessing }
GLCanvasPrograms >> rectangleProgram [

	^ rectangleProgram
]

{ #category : #accessing }
GLCanvasPrograms >> textureProgram [

	^ textureProgram
]

{ #category : #accessing }
GLCanvasPrograms >> vao [

	^ vao
]

{ #category : #accessing }
GLCanvasPrograms >> vao: anObject [

	vao := anObject.
]

{ #category : #accessing }
GLCanvasPrograms >> vbo [

	^ vbo
]

{ #category : #accessing }
GLCanvasPrograms >> vbo: anObject [

	vbo := anObject.
]

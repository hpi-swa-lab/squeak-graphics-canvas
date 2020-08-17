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
	#category : #'MPOpenGL-Canvas'
}

{ #category : #'instance creation' }
GLSharedCanvasResources class >> create [
	FileStream stdout nextPutAll: 'hi'; cr.
	^ self new
]

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

	vao := GL value createObject: GLVertexArrayObject.
	vao bind.
	vbo := GL value createObject: GLVertexBufferObject.
	vbo
		data: #(
			0.0 0.0 0.0 0.0
			1.0 0.0 1.0 0.0
			0.0 1.0 0.0 1.0
			1.0 1.0 1.0 1.0 ) asFloat32Array
		usage: GL_STATIC_DRAW
		componentsPerVertex: 4.
	GL value checkForError
]

{ #category : #initialization }
GLSharedCanvasResources >> initializeProgramAttributes [

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
GLSharedCanvasResources >> initializePrograms [

	textureProgram := GL value getShaderProgram: GLCanvasTextureProgram.
	outlineProgram := GL value getShaderProgram: GLCanvasOutlineProgram.
	rectangleProgram := GL value getShaderProgram: GLCanvasRectangleProgram.
	fontProgram := GL value getShaderProgram: GLCanvasFontProgram.
	GL value checkForError
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

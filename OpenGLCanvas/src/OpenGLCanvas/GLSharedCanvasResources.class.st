Class {
	#name : #GLSharedCanvasResources,
	#superclass : #Object,
	#instVars : [
		'vao',
		'vbo',
		'textureProgram',
		'outlineProgram',
		'ovalProgram',
		'polygonProgram',
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
	vbo := GLArrayBuffer create.
	vbo
		usage: GL_STATIC_DRAW
		data: #(
			0.0 0.0 0.0 0.0
			1.0 0.0 1.0 0.0
			0.0 1.0 0.0 1.0
			1.0 1.0 1.0 1.0 ) asFloat32Array.
	GL checkForError
]

{ #category : #initialization }
GLSharedCanvasResources >> initializeProgramAttributes [

	vbo boundDuring: [
		textureProgram useDuring: [
			textureProgram image: 0.
			GL checkForError.
			textureProgram vertexAttrib: textureProgram aPosLocation components: 2 stride: 16 offset: 0.
			GL checkForError.
			textureProgram vertexAttrib: textureProgram aTexCoordsLocation components: 2 stride: 16 offset: 8.
			GL checkForError].
	
		rectangleProgram useDuring: [
			rectangleProgram vertexAttrib: rectangleProgram aPosLocation components: 2 stride: 16 offset: 0.
			GL checkForError]]
]

{ #category : #initialization }
GLSharedCanvasResources >> initializePrograms [
	
	textureProgram := GL getShaderProgram: GLCanvasTextureProgram.
	ovalProgram := GL getShaderProgram: GLCanvasOvalProgram.
	polygonProgram := GL getShaderProgram: GLCanvasPolygonProgram.
	rectangleProgram := GL getShaderProgram: GLCanvasRectangleProgram.
	fontProgram := GL getShaderProgram: GLCanvasFontProgram.
	GL checkForError
]

{ #category : #accessing }
GLSharedCanvasResources >> ovalProgram [

	^ ovalProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> polygonProgram [

	^ polygonProgram
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

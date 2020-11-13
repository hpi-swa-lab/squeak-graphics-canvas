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
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLSharedCanvasResources >> font: aFont [

	| font |
	font := aFont ifNil: [TextStyle defaultFont].
	
	^ fonts at: font ifAbsentPut: [GLBitmapFont new font: font]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLSharedCanvasResources >> fontProgram [

	^ fontProgram
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLSharedCanvasResources >> initialize [

	super initialize.
	
	fonts := Dictionary new.
	
	self initializePrograms.
	self initializeBuffers.
	self initializeProgramAttributes
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/6/2020 14:24'
}
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

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 16:20'
}
GLSharedCanvasResources >> initializeProgramAttributes [

	vbo boundDuring: [
		textureProgram useDuring: [
			textureProgram image: 0.
			GL checkForError.
			textureProgram vertexAttrib: textureProgram aPosLocation components: 2 stride: 16 offset: 0.
			GL checkForError.
			textureProgram vertexAttrib: textureProgram aTexCoordsLocation components: 2 stride: 16 offset: 8.
			GL checkForError].
	
		outlineProgram useDuring: [
			outlineProgram vertexAttrib: outlineProgram aPosLocation components: 2 stride: 16 offset: 0.
			GL checkForError.
			outlineProgram vertexAttrib: outlineProgram aTexCoordsLocation components: 2 stride: 16 offset: 8.
			GL checkForError].
	
		rectangleProgram useDuring: [
			rectangleProgram vertexAttrib: rectangleProgram aPosLocation components: 2 stride: 16 offset: 0.
			GL checkForError]]
]

{
	#category : #initialization,
	#timestamp : 'stlu 10/26/2020 11:04'
}
GLSharedCanvasResources >> initializePrograms [

	textureProgram := GL getShaderProgram: GLCanvasTextureProgram.
	outlineProgram := GL getShaderProgram: GLCanvasOutlineProgram.
	rectangleProgram := GL getShaderProgram: GLCanvasRectangleProgram.
	fontProgram := GL getShaderProgram: GLCanvasFontProgram.
	GL checkForError
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLSharedCanvasResources >> outlineProgram [

	^ outlineProgram
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLSharedCanvasResources >> rectangleProgram [

	^ rectangleProgram
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLSharedCanvasResources >> textureProgram [

	^ textureProgram
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLSharedCanvasResources >> vao [

	^ vao
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLSharedCanvasResources >> vao: anObject [

	vao := anObject.
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLSharedCanvasResources >> vbo [

	^ vbo
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLSharedCanvasResources >> vbo: anObject [

	vbo := anObject.
]

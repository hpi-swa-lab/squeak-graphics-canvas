Class {
	#name : #GLCanvasPrograms,
	#superclass : #Object,
	#instVars : [
		'vao',
		'vbo',
		'textureProgram',
		'outlineProgram'
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

{ #category : #initialization }
GLCanvasPrograms >> initialize [

	super initialize.
	GL value checkForError.
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
	
	outlineProgram vertexAttrib: textureProgram aPosLocation value: vbo stride: 4 offset: 0.
	GL value checkForError.
	outlineProgram vertexAttrib: textureProgram aTexCoordsLocation value: vbo stride: 4 offset: 2.
	GL value checkForError
]

{ #category : #initialization }
GLCanvasPrograms >> initializePrograms [

	textureProgram := GL value getShaderProgram: GLCanvasTextureProgram.
	outlineProgram := GL value getShaderProgram: GLCanvasOutlineProgram.
	GL value checkForError
]

{ #category : #accessing }
GLCanvasPrograms >> outlineProgram [

	^ outlineProgram
]

{ #category : #accessing }
GLCanvasPrograms >> outlineProgram: anObject [

	outlineProgram := anObject.
]

{ #category : #accessing }
GLCanvasPrograms >> textureProgram [

	^ textureProgram
]

{ #category : #accessing }
GLCanvasPrograms >> textureProgram: anObject [

	textureProgram := anObject.
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

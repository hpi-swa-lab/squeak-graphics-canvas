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

{ #category : #initialization }
GLCanvasPrograms >> initialize [

	super initialize.
	self initializePrograms.
	self initializeBuffers.
	self initializeProgramAttributes.
	GL value checkForError
]

{ #category : #initialization }
GLCanvasPrograms >> initializeBuffers [

	vao := GLVertexArrayObject new.
	vao bind.
	vbo := GLVertexBufferObject new.
	vbo
		data: {
			0. 0. 0. 0 .
			1. 0. 1. 0.
			0. 1. 0. 1.
			1. 1. 1. 1.
		} asFloat32Array
		usage: GL_STATIC_DRAW
		componentsPerVertex: 4
]

{ #category : #initialization }
GLCanvasPrograms >> initializeProgramAttributes [

	textureProgram image: 0.
	textureProgram vertexAttrib: textureProgram aPosLocation value: vbo stride: 4 offset: 0.
	textureProgram vertexAttrib: textureProgram aTexCoordsLocation value: vbo stride: 4 offset: 2.
	
	outlineProgram vertexAttrib: textureProgram aPosLocation value: vbo stride: 4 offset: 0.
	outlineProgram vertexAttrib: textureProgram aTexCoordsLocation value: vbo stride: 4 offset: 2
]

{ #category : #initialization }
GLCanvasPrograms >> initializePrograms [

	textureProgram := GLCanvasTextureProgram new.
	outlineProgram := GLCanvasOutlineProgram new
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

Class {
	#name : #GLCanvasPrograms,
	#superclass : #Object,
	#instVars : [
		'vao',
		'vbo',
		'textureProgram',
		'outlineProgram'
	],
	#category : #'MPOpenGL-Canvas'
}

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

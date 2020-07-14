Class {
	#name : #GLCanvasTextureProgram,
	#superclass : #GLProgram,
	#instVars : [
		'mvpLocation',
		'sourcePositionLocation',
		'sourceExtentLocation',
		'imageLocation',
		'aPosLocation',
		'aTexCoordsLocation'
	],
	#category : #'MPOpenGL-Canvas'
}

{ #category : #'shader code' }
GLCanvasTextureProgram class >> fragmentShader [
	^'#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D image;

void main() {
  FragColor = texture(image, TexCoords);
}' withUnixLineEndings
]

{ #category : #'shader code' }
GLCanvasTextureProgram class >> vertexShader [
    ^'#version 330 core
in vec2 aPos;
in vec2 aTexCoords;

uniform mat4 mvp;
uniform vec2 sourcePosition;
uniform vec2 sourceExtent;
out vec2 TexCoords;

void main()
{
    TexCoords = aTexCoords * sourceExtent + sourcePosition;
    gl_Position = mvp * vec4(aPos, 0.0, 1.0);
}' withUnixLineEndings
]

{ #category : #accessing }
GLCanvasTextureProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #accessing }
GLCanvasTextureProgram >> aTexCoordsLocation [

	^ aTexCoordsLocation
]

{ #category : #'uniform accessing' }
GLCanvasTextureProgram >> image: anObject [

	self uniform: imageLocation value: anObject
]

{ #category : #accessing }
GLCanvasTextureProgram >> imageLocation [

	^ imageLocation
]

{ #category : #initialization }
GLCanvasTextureProgram >> initializeLocations [

	super initializeLocations.
	mvpLocation := gl glGetUniformLocation: id with: 'mvp'.
	self assert: mvpLocation >= 0.
	sourceExtentLocation := gl glGetUniformLocation: id with: 'sourceExtent'.
	self assert: sourceExtentLocation >= 0.
	sourcePositionLocation := gl glGetUniformLocation: id with: 'sourcePosition'.
	self assert: sourcePositionLocation >= 0.
	imageLocation := gl glGetUniformLocation: id with: 'image'.
	self assert: imageLocation >= 0.
	aPosLocation := gl glGetAttribLocation: id with: 'aPos'.
	self assert: aPosLocation >= 0.
	aTexCoordsLocation := gl glGetAttribLocation: id with: 'aTexCoords'.
	self assert: aTexCoordsLocation >= 0
]

{ #category : #'uniform accessing' }
GLCanvasTextureProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{ #category : #accessing }
GLCanvasTextureProgram >> mvpLocation [

	^ mvpLocation
]

{ #category : #'uniform accessing' }
GLCanvasTextureProgram >> sourceExtent: aPoint [

	self uniform: sourceExtentLocation value: aPoint
]

{ #category : #accessing }
GLCanvasTextureProgram >> sourceExtentLocation [
	^ sourceExtentLocation
]

{ #category : #'uniform accessing' }
GLCanvasTextureProgram >> sourcePosition: aPoint [

	self uniform: sourcePositionLocation value: aPoint
]

{ #category : #accessing }
GLCanvasTextureProgram >> sourcePositionLocation [
	^ sourcePositionLocation
]

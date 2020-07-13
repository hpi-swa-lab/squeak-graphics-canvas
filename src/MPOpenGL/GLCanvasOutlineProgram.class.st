Class {
	#name : #GLCanvasOutlineProgram,
	#superclass : #GLProgram,
	#instVars : [
		'colorLocation',
		'mvpLocation',
		'aPosLocation',
		'aTexCoordsLocation',
		'aTextureSize'
	],
	#category : #'MPOpenGL-Canvas'
}

{ #category : #'shader code' }
GLCanvasOutlineProgram class >> fragmentShader [
	^'#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform vec2 aTextureSize;
uniform vec3 color;

void main() {
	vec2 point = aTextureSize * TexCoords;
	if (any(greaterThan(vec2(2, 2), point)) || any(lessThan(aTextureSize - vec2(2, 2), point))) {
		FragColor = vec4(color, 1.0);
	} else {
		discard;
	}
}' withUnixLineEndings
]

{ #category : #'shader code' }
GLCanvasOutlineProgram class >> vertexShader [
	^'#version 330 core
in vec2 aPos;
in vec2 aTexCoords;

uniform mat4 mvp;
out vec2 TexCoords;

void main()
{
    TexCoords = aTexCoords;
    gl_Position = mvp * vec4(aPos, 0.0, 1.0);
}' withUnixLineEndings
]

{ #category : #accessing }
GLCanvasOutlineProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #accessing }
GLCanvasOutlineProgram >> aTexCoordsLocation [

	^ aTexCoordsLocation
]

{ #category : #'uniform accessing' }
GLCanvasOutlineProgram >> color: anObject [

	self uniform: colorLocation value: anObject
]

{ #category : #accessing }
GLCanvasOutlineProgram >> colorLocation [

	^ colorLocation
]

{ #category : #initialization }
GLCanvasOutlineProgram >> initializeLocations [

	super initializeLocations.
	mvpLocation := gl glGetUniformLocation: id with: 'mvp'.
	self assert: mvpLocation >= 0.
	colorLocation := gl glGetUniformLocation: id with: 'color'.
	self assert: colorLocation >= 0.
	aTextureSize := gl glGetUniformLocation: id with: 'aTextureSize'.
	self assert: aTextureSize >= 0.
	
	aPosLocation := gl glGetAttribLocation: id with: 'aPos'.
	self assert: aPosLocation >= 0.
	aTexCoordsLocation := gl glGetAttribLocation: id with: 'aTexCoords'.
	self assert: aTexCoordsLocation >= 0
]

{ #category : #'uniform accessing' }
GLCanvasOutlineProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{ #category : #accessing }
GLCanvasOutlineProgram >> mvpLocation [

	^ mvpLocation
]

{ #category : #initialization }
GLCanvasOutlineProgram >> textureSize: aPoint [

	self uniform: aTextureSize value: aPoint
]

Class {
	#name : #GLCanvasPolygonProgram,
	#superclass : #GLStaticProgram,
	#instVars : [
		'mvpLocation',
		'extentLocation',
		'colorLocation',
		'borderColorLocation',
		'borderWidthLocation',
		'aPosLocation',
		'aTexCoordsLocation'
	],
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasPolygonProgram class >> attributes [

	^ #('aPos')
]

{ #category : #'shader code' }
GLCanvasPolygonProgram class >> fragmentShader [

	^ '#version 330 core
out vec4 FragColor;

in vec2 point;

uniform vec4 color;

void main() {
	FragColor = color;
}' withUnixLineEndings
]

{ #category : #'shader code' }
GLCanvasPolygonProgram class >> uniforms [

	^ #('mvp' 'color')
]

{ #category : #'shader code' }
GLCanvasPolygonProgram class >> vertexShader [
    ^'#version 330 core
in vec2 aPos;

uniform mat4 mvp;

out vec2 point;

void main()
{
	point = aPos;
	gl_Position = mvp * vec4(point, 0.0, 1.0);
}' withUnixLineEndings
]

{ #category : #generated }
GLCanvasPolygonProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #generated }
GLCanvasPolygonProgram >> color: anObject [

	self uniform: colorLocation value: anObject
]

{ #category : #generated }
GLCanvasPolygonProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	colorLocation := self registerUniform: 'color'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{ #category : #generated }
GLCanvasPolygonProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

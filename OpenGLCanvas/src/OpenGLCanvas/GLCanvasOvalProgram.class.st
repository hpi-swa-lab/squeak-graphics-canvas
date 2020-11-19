Class {
	#name : #GLCanvasOvalProgram,
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
GLCanvasOvalProgram class >> attributes [

	^ #('aPos')
]

{ #category : #'shader code' }
GLCanvasOvalProgram class >> fragmentShader [

	^ '#version 330 core
out vec4 FragColor;

in vec2 point;

uniform vec2 extent;
uniform vec4 color;
uniform vec4 borderColor;
uniform float borderWidth;

void main() {
	vec2 relativePos = (point - extent / 2.0) / extent * 2.0;
	if (dot(relativePos, relativePos) > 1.0)
	{
		discard;
	}
	
	vec2 relativeInnerPos = (point - extent / 2.0) / (extent / 2.0 - vec2(borderWidth, borderWidth));
	FragColor = mix(
		color,
		borderColor,
		float(dot(relativeInnerPos, relativeInnerPos) > 1.0)
	);
}' withUnixLineEndings
]

{ #category : #'shader code' }
GLCanvasOvalProgram class >> uniforms [

	^ #('mvp' 'extent' 'color' 'borderColor' 'borderWidth')
]

{ #category : #'shader code' }
GLCanvasOvalProgram class >> vertexShader [
    ^'#version 330 core
in vec2 aPos;

uniform mat4 mvp;
uniform vec2 extent;

out vec2 point;

void main()
{
	point = aPos * extent;
    gl_Position = mvp * vec4(point, 0.0, 1.0);
}' withUnixLineEndings
]

{ #category : #generated }
GLCanvasOvalProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #generated }
GLCanvasOvalProgram >> borderColor: anObject [

	self uniform: borderColorLocation value: anObject
]

{ #category : #generated }
GLCanvasOvalProgram >> borderWidth: anObject [

	self uniform: borderWidthLocation value: anObject
]

{ #category : #generated }
GLCanvasOvalProgram >> color: anObject [

	self uniform: colorLocation value: anObject
]

{ #category : #generated }
GLCanvasOvalProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{ #category : #generated }
GLCanvasOvalProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	extentLocation := self registerUniform: 'extent'.
	colorLocation := self registerUniform: 'color'.
	borderColorLocation := self registerUniform: 'borderColor'.
	borderWidthLocation := self registerUniform: 'borderWidth'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{ #category : #generated }
GLCanvasOvalProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

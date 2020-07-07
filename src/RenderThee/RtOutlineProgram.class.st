Class {
	#name : #RtOutlineProgram,
	#superclass : #GLProgram,
	#instVars : [
		'colorLocation',
		'mvpLocation',
		'aPosLocation',
		'aTexCoordsLocation',
		'aTextureSize'
	],
	#category : #'RenderThee-Core'
}

{ #category : #'shader code' }
RtOutlineProgram class >> fragmentShader [
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
RtOutlineProgram class >> vertexShader [
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
RtOutlineProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #accessing }
RtOutlineProgram >> aTexCoordsLocation [

	^ aTexCoordsLocation
]

{ #category : #'uniform accessing' }
RtOutlineProgram >> color: anObject [

	self uniform: colorLocation value: anObject
]

{ #category : #accessing }
RtOutlineProgram >> colorLocation [

	^ colorLocation
]

{ #category : #initialization }
RtOutlineProgram >> initializeLocations [

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
RtOutlineProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{ #category : #accessing }
RtOutlineProgram >> mvpLocation [

	^ mvpLocation
]

{ #category : #initialization }
RtOutlineProgram >> textureSize: aPoint [

	self uniform: aTextureSize value: aPoint
]

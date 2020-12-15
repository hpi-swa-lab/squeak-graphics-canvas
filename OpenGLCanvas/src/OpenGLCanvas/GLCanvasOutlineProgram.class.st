Class {
	#name : #GLCanvasOutlineProgram,
	#superclass : #GLStaticProgram,
	#instVars : [
		'colorLocation',
		'mvpLocation',
		'aPosLocation',
		'aTexCoordsLocation',
		'aTextureSize'
	],
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : 'stlu 11/13/2020 18:20'
}
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

{
	#category : #'shader code',
	#timestamp : 'stlu 11/13/2020 18:20'
}
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

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLCanvasOutlineProgram >> aPosLocation [

	^ aPosLocation
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLCanvasOutlineProgram >> aTexCoordsLocation [

	^ aTexCoordsLocation
]

{
	#category : #'uniform accessing',
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLCanvasOutlineProgram >> color: anObject [

	self uniform: colorLocation value: anObject
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLCanvasOutlineProgram >> colorLocation [

	^ colorLocation
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/3/2020 15:34'
}
GLCanvasOutlineProgram >> initializeLocations [

	super initializeLocations.
	mvpLocation := GL getUniformLocation: id with: 'mvp'.
	self assert: mvpLocation >= 0.
	colorLocation := GL getUniformLocation: id with: 'color'.
	self assert: colorLocation >= 0.
	aTextureSize := GL getUniformLocation: id with: 'aTextureSize'.
	self assert: aTextureSize >= 0.
	
	aPosLocation := GL getAttribLocation: id with: 'aPos'.
	self assert: aPosLocation >= 0.
	aTexCoordsLocation := GL getAttribLocation: id with: 'aTexCoords'.
	self assert: aTexCoordsLocation >= 0
]

{
	#category : #'uniform accessing',
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLCanvasOutlineProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLCanvasOutlineProgram >> mvpLocation [

	^ mvpLocation
]

{
	#category : #initialization,
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLCanvasOutlineProgram >> textureSize: aPoint [

	self uniform: aTextureSize value: aPoint
]

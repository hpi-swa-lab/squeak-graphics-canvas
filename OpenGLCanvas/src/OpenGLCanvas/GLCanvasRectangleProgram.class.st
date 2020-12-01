Class {
	#name : #GLCanvasRectangleProgram,
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
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'as yet unclassified',
	#timestamp : ''
}
GLCanvasRectangleProgram class >> attributes [

	^ #('aPos')
]

{
	#category : #'as yet unclassified',
	#timestamp : ''
}
GLCanvasRectangleProgram class >> fragmentShader [

	^ '#version 330 core
out vec4 FragColor;

in vec2 point;

uniform vec2 extent;
uniform vec4 color;
uniform vec4 borderColor;
uniform float borderWidth;

void main() {
	vec2 b = vec2(borderWidth, borderWidth);
	FragColor = mix(
		color,
		borderColor,
		float(any(lessThan(point, b)) || any(greaterThan(point, extent - b)))
	);
}'
]

{
	#category : #'as yet unclassified',
	#timestamp : ''
}
GLCanvasRectangleProgram class >> uniforms [

	^ #('mvp' 'extent' 'color' 'borderColor' 'borderWidth')
]

{
	#category : #'as yet unclassified',
	#timestamp : ''
}
GLCanvasRectangleProgram class >> vertexShader [
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

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasRectangleProgram >> aPosLocation [

	^ aPosLocation
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasRectangleProgram >> borderColor: anObject [

	self uniform: borderColorLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasRectangleProgram >> borderWidth: anObject [

	self uniform: borderWidthLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasRectangleProgram >> color: anObject [

	self uniform: colorLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasRectangleProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasRectangleProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	extentLocation := self registerUniform: 'extent'.
	colorLocation := self registerUniform: 'color'.
	borderColorLocation := self registerUniform: 'borderColor'.
	borderWidthLocation := self registerUniform: 'borderWidth'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasRectangleProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

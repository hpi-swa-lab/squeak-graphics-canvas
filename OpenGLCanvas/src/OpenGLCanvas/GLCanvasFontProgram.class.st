Class {
	#name : #GLCanvasFontProgram,
	#superclass : #GLStaticProgram,
	#instVars : [
		'extentLocation',
		'colorLocation',
		'mvpLocation',
		'aPosLocation',
		'offsetXLocation',
		'imageLocation'
	],
	#category : #'OpenGLCanvas-Fonts',
	#'squeak_changestamp' : ''
}

{
	#category : #'shader code',
	#'squeak_changestamp' : ''
}
GLCanvasFontProgram class >> fragmentShader [

	^ '#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D image;
uniform vec4 color;

void main()
{
	FragColor = texture(image, TexCoords) * color ;
}'
]

{
	#category : #'shader code',
	#'squeak_changestamp' : 'stlu 3/9/2021 16:51'
}
GLCanvasFontProgram class >> vertexShader [

	^ '#version 330 core
layout (location = 0) in vec2 aPos;

uniform mat4 projectionMatrix;
uniform mat4 modelMatrix;
uniform float offsetX;
uniform vec2 extent;
uniform sampler2D image;

out vec2 TexCoords;

void main()
{
	TexCoords = (aPos * extent + vec2(offsetX, 0.0)) / textureSize(image, 0);
	gl_Position = projectionMatrix * modelMatrix * vec4(aPos * extent, 0.0, 1.0);
}'
]

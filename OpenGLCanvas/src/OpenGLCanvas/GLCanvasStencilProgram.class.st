Class {
	#name : #GLCanvasStencilProgram,
	#superclass : #GLStaticProgram,
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasStencilProgram class >> fragmentShader [

	^'#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D image;
uniform vec4 color;

void main() {
	if (texture(image, TexCoords) == vec4(0.0, 0.0, 0.0, 0.0))
	{
		discard;
	}
	FragColor = color;
}'
]

{
	#category : #'shader code',
	#timestamp : 'stlu 3/9/2021 16:52'
}
GLCanvasStencilProgram class >> vertexShader [

	^ '#version 330 core
layout (location = 0) in vec2 aPos;
layout (location = 1) in vec2 aTexCoords;

uniform mat4 projectionMatrix;
uniform mat4 modelMatrix;
uniform vec2 sourcePosition;
uniform vec2 sourceExtent;

out vec2 TexCoords;

void main()
{
	TexCoords = aTexCoords * sourceExtent + sourcePosition;
	gl_Position = projectionMatrix * modelMatrix * vec4(aPos, 0.0, 1.0);
}'
]

Class {
	#name : #GLCanvasTextureProgram,
	#superclass : #GLStaticProgram,
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasTextureProgram class >> fragmentShader [

	^'#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D image;

void main() {
	FragColor = texture(image, TexCoords);
}'
]

{
	#category : #'shader code',
	#timestamp : 'stlu 3/9/2021 14:46'
}
GLCanvasTextureProgram class >> vertexShader [

	^ '#version 330 core
layout (location = 0) in vec2 aPos;
layout (location = 1) in vec2 aTexCoords;

uniform mat4 mvp;
uniform vec2 sourcePosition;
uniform vec2 sourceExtent;

out vec2 TexCoords;

void main()
{
	TexCoords = aTexCoords * sourceExtent + sourcePosition;
	gl_Position = mvp * vec4(aPos, 0.0, 1.0);
}'
]

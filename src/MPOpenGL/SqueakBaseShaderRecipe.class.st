Class {
	#name : #SqueakBaseShaderRecipe,
	#superclass : #GLShaderRecipe,
	#category : #'MPOpenGL-Shaders'
}

{ #category : #code }
SqueakBaseShaderRecipe >> fragmentShader [
	^'#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D image;

void main() {
     FragColor = vec4(texture(image, TexCoords).rgb, 1.0);
}' withUnixLineEndings
]

{ #category : #code }
SqueakBaseShaderRecipe >> vertexShader [
    ^'#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoords;

uniform mat4 mvp;
out vec2 TexCoords;

void main()
{
    TexCoords = aTexCoords;
    gl_Position = mvp * vec4(aPos, 1.0);
}' withUnixLineEndings
]

Class {
	#name : #RtTextureProgram,
	#superclass : #GLShaderRecipe,
	#category : #'RenderThee-Core'
}

{ #category : #code }
RtTextureProgram >> fragmentShader [
	^'#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D image;

void main() {
  FragColor = texture(image, TexCoords);
}' withUnixLineEndings
]

{ #category : #code }
RtTextureProgram >> vertexShader [
	^'#version 330 core
layout (location = 0) in vec2 aPos;
layout (location = 1) in vec2 aTexCoords;

uniform mat4 mvp;
out vec2 TexCoords;

void main()
{
    TexCoords = aTexCoords;
    gl_Position = mvp * vec4(aPos, 0.0, 1.0);
}' withUnixLineEndings
]

Class {
	#name : #RtOutlineProgram,
	#superclass : #GLShaderRecipe,
	#category : #'RenderThee-Core'
}

{ #category : #code }
RtOutlineProgram >> fragmentShader [
	^'#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform vec3 color;

void main() {
  vec2 distToMid = abs(vec2(0.5, 0.5) - TexCoords);
    float distToEdge = max(distToMid.x, distToMid.y);
  float factor = clamp((distToEdge * 20.0) - 9.4, 0.0, 1.0); //0.0 -> 1.0 towards edge
  FragColor = vec4(color, factor);
}' withUnixLineEndings
]

{ #category : #code }
RtOutlineProgram >> vertexShader [
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

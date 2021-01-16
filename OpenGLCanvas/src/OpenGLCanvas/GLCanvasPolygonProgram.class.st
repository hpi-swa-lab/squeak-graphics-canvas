Class {
	#name : #GLCanvasPolygonProgram,
	#superclass : #GLStaticProgram,
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasPolygonProgram class >> attributes [

	^ #('aPos')
]

{ #category : #'shader code' }
GLCanvasPolygonProgram class >> fragmentShader [

	^ '#version 330 core
out vec4 FragColor;

in vec2 point;

' , self fragmentShaderFillColor , '

void main() {
	FragColor = getColor();
}'
]

{ #category : #'shader code' }
GLCanvasPolygonProgram class >> fragmentShaderFillColor [

	self subclassResponsibility
]

{ #category : #'shader code' }
GLCanvasPolygonProgram class >> uniforms [

	^ #('mvp')
]

{ #category : #'shader code' }
GLCanvasPolygonProgram class >> vertexShader [
    ^'#version 330 core
in vec2 aPos;

uniform mat4 mvp;

out vec2 point;

void main()
{
	point = aPos;
	gl_Position = mvp * vec4(point, 0.0, 1.0);
}'
]

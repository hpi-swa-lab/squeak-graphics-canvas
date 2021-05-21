Class {
	#name : #GLCanvasPolygonProgram,
	#superclass : #GLCanvasFillStyleProgram,
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasPolygonProgram class >> fragmentShaderMain [

	^ 'void main()
{
	FragColor = getColor();
}'
]

{ #category : #'shader code' }
GLCanvasPolygonProgram class >> fragmentShaderPrimitivePreamble [

	^ '#version 330 core
out vec4 FragColor;

in vec2 point;

uniform vec2 origin;'
]

{ #category : #'shader code' }
GLCanvasPolygonProgram class >> primitiveUniforms [

	^ #('mvp')
]

{
	#category : #'shader code',
	#'squeak_changestamp' : 'stlu 3/9/2021 16:51'
}
GLCanvasPolygonProgram class >> vertexShader [

	^ '#version 330 core
layout (location = 2) in vec2 aPos;

uniform mat4 projectionMatrix;
uniform mat4 modelMatrix;

out vec2 point;

void main()
{
	point = aPos;
	gl_Position = projectionMatrix * modelMatrix * vec4(point, 0.0, 1.0);
}'
]

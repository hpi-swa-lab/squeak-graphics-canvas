Class {
	#name : #GLCanvasRectangleProgram,
	#superclass : #GLStaticProgram,
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasRectangleProgram class >> attributes [

	^ #('aPos')
]

{ #category : #'shader code' }
GLCanvasRectangleProgram class >> fragmentShader [

	^ '#version 330 core
out vec4 FragColor;

in vec2 point;

uniform vec2 extent;
uniform vec2 origin;
uniform vec4 borderColor;
uniform float borderWidth;

', self fragmentShaderFillColor, '

void main() {
	vec2 b = vec2(borderWidth, borderWidth);
	FragColor = mix(
		getColor(),
		borderColor,
		float(any(lessThan(point - origin, b)) || any(greaterThan(point - origin, extent - b)))
	);
}' withUnixLineEndings
]

{ #category : #'shader code' }
GLCanvasRectangleProgram class >> uniforms [

	^ #('mvp' 'extent' 'origin' 'borderColor' 'borderWidth')
]

{ #category : #'shader code' }
GLCanvasRectangleProgram class >> vertexShader [
    ^'#version 330 core
in vec2 aPos;

uniform mat4 mvp;
uniform vec2 extent;
uniform vec2 origin;

out vec2 point;

void main()
{
	point = origin + aPos * extent;
	gl_Position = mvp * vec4(point, 0.0, 1.0);
}' withUnixLineEndings
]

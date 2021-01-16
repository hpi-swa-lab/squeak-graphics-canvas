Class {
	#name : #GLCanvasOvalProgram,
	#superclass : #GLStaticProgram,
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasOvalProgram class >> attributes [

	^ #('aPos')
]

{ #category : #'shader code' }
GLCanvasOvalProgram class >> fragmentShader [

	^ '#version 330 core
out vec4 FragColor;

in vec2 point;

uniform vec2 extent;
uniform vec2 origin;
uniform vec4 borderColor;
uniform float borderWidth;

' , self fragmentShaderFillColor , '

void main() {
	vec2 pos = point - extent / 2.0 - origin;
	vec2 relativePos = pos / extent * 2.0;
	if (dot(relativePos, relativePos) > 1.0)
	{
		discard;
	}
	
	vec2 relativeInnerPos = pos / (extent / 2.0 - vec2(borderWidth, borderWidth));
	FragColor = mix(
		getColor(),
		borderColor,
		float(dot(relativeInnerPos, relativeInnerPos) > 1.0)
	);
}'
]

{ #category : #'shader code' }
GLCanvasOvalProgram class >> fragmentShaderFillColor [

	self subclassResponsibility
]

{ #category : #'shader code' }
GLCanvasOvalProgram class >> uniforms [

	^ #('mvp' 'extent' 'origin' 'borderColor' 'borderWidth')
]

{ #category : #'shader code' }
GLCanvasOvalProgram class >> vertexShader [
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
}'
]

Class {
	#name : #GLCanvasOvalProgram,
	#superclass : #GLCanvasFillStyleProgram,
	#category : #'OpenGLCanvas-Core',
	#'squeak_changestamp' : ''
}

{
	#category : #'shader code',
	#'squeak_changestamp' : ''
}
GLCanvasOvalProgram class >> fragmentShaderMain [

	^ 'void main()
{
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

{
	#category : #'shader code',
	#'squeak_changestamp' : ''
}
GLCanvasOvalProgram class >> fragmentShaderPrimitivePreamble [

	^ '#version 330 core
out vec4 FragColor;

in vec2 point;

uniform vec2 extent;
uniform vec2 origin;
uniform vec4 borderColor;
uniform float borderWidth;'
]

{
	#category : #'shader code',
	#'squeak_changestamp' : 'stlu 3/9/2021 16:51'
}
GLCanvasOvalProgram class >> vertexShader [

	^ '#version 330 core
layout (location = 0) in vec2 aPos;

uniform mat4 projectionMatrix;
uniform mat4 modelMatrix;
uniform vec2 extent;
uniform vec2 origin;

out vec2 point;

void main()
{
	point = origin + aPos * extent;
	gl_Position = projectionMatrix * modelMatrix * vec4(point, 0.0, 1.0);
}'
]

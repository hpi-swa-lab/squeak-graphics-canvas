Class {
	#name : #GLCanvasOvalProgram,
	#superclass : #GLCanvasFillStyleProgram,
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
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
	#timestamp : ''
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
	#timestamp : ''
}
GLCanvasOvalProgram class >> primitiveUniforms [

	^ #('mvp' 'extent' 'origin' 'borderColor' 'borderWidth')
]

{
	#category : #'shader code',
	#timestamp : ''
}
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
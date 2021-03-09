Class {
	#name : #GLCanvasPolygonProgram,
	#superclass : #GLCanvasFillStyleProgram,
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasPolygonProgram class >> fragmentShaderMain [

	^ 'void main()
{
	FragColor = getColor();
}'
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasPolygonProgram class >> fragmentShaderPrimitivePreamble [

	^ '#version 330 core
out vec4 FragColor;

in vec2 point;

uniform vec2 origin;'
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasPolygonProgram class >> primitiveUniforms [

	^ #('mvp')
]

{
	#category : #'shader code',
	#timestamp : 'stlu 3/9/2021 15:40'
}
GLCanvasPolygonProgram class >> vertexShader [

	^ '#version 330 core
layout (location = 2) in vec2 aPos;

uniform mat4 mvp;

out vec2 point;

void main()
{
	point = aPos;
	gl_Position = mvp * vec4(point, 0.0, 1.0);
}'
]

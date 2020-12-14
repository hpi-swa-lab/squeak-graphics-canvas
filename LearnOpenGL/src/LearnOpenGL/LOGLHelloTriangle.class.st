"
1.2.1
"
Class {
	#name : #LOGLHelloTriangle,
	#superclass : #LOGLTemplate,
	#instVars : [
		'program',
		'vao',
		'vbo'
	],
	#category : #'LearnOpenGL-GettingStarted',
	#commentStamp : 'stlu 12/14/2020 15:50'
}

{
	#category : #shaders,
	#timestamp : 'stlu 10/22/2020 16:53'
}
LOGLHelloTriangle >> fragmentShaderSource [

	^ '#version 330 core
out vec4 FragColor;
void main() {
	FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);
}'
]

{
	#category : #running,
	#timestamp : 'stlu 11/3/2020 15:01'
}
LOGLHelloTriangle >> render [

	GL setClearColor: (Color gray: (Time millisecondClock \\ 5000 / 5000)).
	GL clear: GL_COLOR_BUFFER_BIT
]

{
	#category : #running,
	#timestamp : 'stlu 12/13/2020 15:49'
}
LOGLHelloTriangle >> setUp [

	| vertexShader fragmentShader |
	vertexShader := GLVertexShader create
						source: self vertexShaderSource;
						compile;
						yourself.
	fragmentShader := GLFragmentShader create
						source: self fragmentShaderSource;
						compile;
						yourself.
	program := GLProgram create
					attachShader: vertexShader;
					attachShader: fragmentShader;
					link;
					yourself.
	vertexShader delete.
	fragmentShader delete
]

{
	#category : #shaders,
	#timestamp : 'stlu 10/27/2020 12:11'
}
LOGLHelloTriangle >> vertexShaderSource [

	^ '#version 330 core
layout (location = 0) in vec3 aPos;
void main() {
	gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
}'
]

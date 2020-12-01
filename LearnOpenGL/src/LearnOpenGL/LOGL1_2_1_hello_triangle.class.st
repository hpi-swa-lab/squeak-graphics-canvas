Class {
	#name : #'LOGL1_2_1_hello_triangle',
	#superclass : #LOGLTemplate,
	#instVars : [
		'vertexShader',
		'fragmentShader',
		'shaderProgram',
		'vao',
		'vbo'
	],
	#category : #'LearnOpenGL-1GettingStarted',
	#commentStamp : ''
}

{
	#category : #shaders,
	#timestamp : 'stlu 10/22/2020 16:53'
}
LOGL1_2_1_hello_triangle >> fragmentShaderSource [

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
LOGL1_2_1_hello_triangle >> render [

	GL setClearColor: (Color gray: (Time millisecondClock \\ 5000 / 5000)).
	GL clear: GL_COLOR_BUFFER_BIT
]

{
	#category : #running,
	#timestamp : 'stlu 11/13/2020 15:47'
}
LOGL1_2_1_hello_triangle >> setUp [

	| vertexShader fragmentShader program |
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
LOGL1_2_1_hello_triangle >> vertexShaderSource [

	^ '#version 330 core
layout (location = 0) in vec3 aPos;
void main() {
	gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
}'
]

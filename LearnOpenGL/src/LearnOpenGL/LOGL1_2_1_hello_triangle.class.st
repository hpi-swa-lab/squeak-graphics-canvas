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
	#category : #'LearnOpenGL-1GettingStarted'
}

{ #category : #shaders }
LOGL1_2_1_hello_triangle >> fragmentShaderSource [

	^ '#version 330 core
out vec4 FragColor;
void main() {
	FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);
}'
]

{ #category : #running }
LOGL1_2_1_hello_triangle >> render [

	GL clearColor: (Color gray: (Time millisecondClock \\ 5000 / 5000)).
	GL glClear: GL_COLOR_BUFFER_BIT
]

{ #category : #running }
LOGL1_2_1_hello_triangle >> setUp [

	| vertexShader |
	vertexShader := GLVertexShader create
						source: self vertexShaderSource
						"compile;
						yourself"
]

{ #category : #shaders }
LOGL1_2_1_hello_triangle >> vertexShaderSource [

	^ '#version 330 core
layout (location = 0) in vec3 aPos;
void main() {
	gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);
}'
]

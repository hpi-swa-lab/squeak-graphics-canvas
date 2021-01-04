"
1.3.2
"
Class {
	#name : #LOGLShadersInterpolation,
	#superclass : #LOGLHelloTriangle,
	#category : #'LearnOpenGL-GettingStarted',
	#commentStamp : 'stlu 1/4/2021 04:08'
}

{
	#category : #shaders,
	#timestamp : 'stlu 1/4/2021 04:13'
}
LOGLShadersInterpolation >> fragmentShaderSource [

	^ '#version 330 core
in vec3 ourColor;
out vec4 FragColor;
void main() {
	FragColor = vec4(ourColor, 1.0f);
}'
]

{
	#category : #running,
	#timestamp : 'stlu 1/4/2021 04:20'
}
LOGLShadersInterpolation >> setUp [

	super setUp.
	
	vao boundDuring: [
		program inputs aPos
			stride: 4*6
			offset: 0.
		program inputs aColor
			stride: 4*6
			offset: 4*3].
	
	GL checkForError
]

{
	#category : #shaders,
	#timestamp : 'stlu 1/4/2021 04:15'
}
LOGLShadersInterpolation >> vertexShaderSource [

	^ '#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

out vec3 ourColor;

void main() {
	gl_Position = vec4(aPos, 1.0);
	ourColor = aColor;
}'
]

{
	#category : #accessing,
	#timestamp : 'stlu 1/4/2021 04:10'
}
LOGLShadersInterpolation >> vertices [

	^ #(
			-0.5 -0.5 0.0	1.0 0.0 0.0
			0.5 -0.5 0.0	0.0 1.0 0.0
			0.0 0.5 0.0		0.0 0.0 1.0
		) asFloat32Array
]

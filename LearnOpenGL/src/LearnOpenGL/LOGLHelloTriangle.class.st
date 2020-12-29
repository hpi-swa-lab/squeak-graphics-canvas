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
	#category : #running,
	#timestamp : 'stlu 12/22/2020 14:54'
}
LOGLHelloTriangle >> draw [

	GL drawArrays: GL_TRIANGLES with: 0 with: 3
]

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
	#timestamp : 'stlu 12/22/2020 14:54'
}
LOGLHelloTriangle >> render [

	GL setClearColor: (Color r: 0.2 g: 0.3 b: 0.3).
	GL clear: GL_COLOR_BUFFER_BIT.
	
	vao boundDuring: [
		program useDuring: [
			self draw]]
]

{
	#category : #running,
	#timestamp : 'stlu 12/22/2020 15:14'
}
LOGLHelloTriangle >> setUp [

	program := GLProgram
					vertexSource: self vertexShaderSource
					fragmentSource: self fragmentShaderSource.
	
	vbo := GLBuffer create.
	vao := GLVertexArray create.
	
	vao boundDuring: [
		vbo bind.
		vbo usage: GL_STATIC_DRAW data: self vertices.
	
		program inputs aPos
			stride: 4*3
			offset: 0].
	
	GL checkForError
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

{
	#category : #accessing,
	#timestamp : 'stlu 12/22/2020 14:34'
}
LOGLHelloTriangle >> vertices [

	^ #(
			-0.5 -0.5 0.0
			0.5 -0.5 0.0
			0.0 0.5 0.0
		) asFloat32Array
]
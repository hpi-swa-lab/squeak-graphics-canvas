"
4.10.1
"
Class {
	#name : #LOGLInstancing,
	#superclass : #LOGLTemplate,
	#instVars : [
		'program',
		'vao',
		'quadVBO',
		'instanceVBO'
	],
	#category : #'LearnOpenGL-Advanced',
	#commentStamp : 'stlu 3/12/2021 20:10'
}

{
	#category : #running,
	#timestamp : 'stlu 3/12/2021 20:08'
}
LOGLInstancing >> draw [

	GL drawArraysInstanced: GL_TRIANGLES with: 0 with: 6 with: 100
]

{
	#category : #shaders,
	#timestamp : 'stlu 3/12/2021 19:44'
}
LOGLInstancing >> fragmentShaderSource [

	^ '#version 330 core
out vec4 FragColor;

in vec3 fColor;

void main()
{
    FragColor = vec4(fColor, 1.0);
}'
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/12/2021 19:58'
}
LOGLInstancing >> quadVertices [

	^ #(	"position"		"color"
			-0.05 0.05		1.0 0.0 0.0
			0.05 -0.05		0.0 1.0 0.0
			-0.05 -0.05		0.0 0.0 1.0

			-0.05 0.05		1.0 0.0 0.0
			0.05 -0.05		0.0 1.0 0.0
			0.05 0.05		0.0 1.0 1.0
		) asFloat32Array
]

{
	#category : #running,
	#timestamp : 'stlu 3/12/2021 20:09'
}
LOGLInstancing >> render [

	GL setClearColor: (Color r: 0.1 g: 0.1 b: 0.1 alpha: 0.1).
	GL clear: (GL_COLOR_BUFFER_BIT bitOr: GL_DEPTH_BUFFER_BIT).
	
	vao boundDuring: [
		program useDuring: [
			self draw]]
]

{
	#category : #running,
	#timestamp : 'stlu 3/12/2021 20:09'
}
LOGLInstancing >> setUp [

	GL enable: GL_DEPTH_TEST.

	program := GLProgram
					vertexSource: self vertexShaderSource
					fragmentSource: self fragmentShaderSource.
	
	quadVBO := GLBuffer create.
	instanceVBO := GLBuffer create.
	vao := GLVertexArray create.
	
	vao boundDuring: [
		quadVBO boundDuring: [
			quadVBO usage: GL_STATIC_DRAW data: self quadVertices.
			program inputs aPos stride: 4*5 offset: 0.
			program inputs aColor stride: 4*5 offset: 4*2].
		instanceVBO boundDuring: [
			instanceVBO usage: GL_STATIC_DRAW data: self translations.
			program inputs aOffset stride: 4*2 offset: 0.
			self flag: #todo. "needs new vertexarray object"
			GL vertexAttribDivisor: program inputs aOffset location with: 1]].
	
	GL checkForError
]

{
	#category : #accessing,
	#timestamp : 'stlu 3/12/2021 20:05'
}
LOGLInstancing >> translations [

	| offset |
	offset := 0.1.
	^ Float32Array new: 100 streamContents: [:stream |
		-10 to: 8 by: 2 do: [:y |
			-10 to: 8 by: 2 do: [:x |
				stream
					nextPut: x / 10.0 + offset;
					nextPut: y / 10.0 + offset]]]
]

{
	#category : #shaders,
	#timestamp : 'stlu 3/12/2021 19:45'
}
LOGLInstancing >> vertexShaderSource [

	^ '#version 330 core
layout (location = 0) in vec2 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aOffset;

out vec3 fColor;

void main()
{
    fColor = aColor;
    gl_Position = vec4(aPos + aOffset, 0.0, 1.0);
}'
]

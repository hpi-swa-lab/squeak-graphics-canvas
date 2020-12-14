Class {
	#name : #SLDemo,
	#superclass : #LOGLTemplate,
	#instVars : [
		'program',
		'vbo',
		'vao'
	],
	#category : #'ShadingLanguage-Examples',
	#commentStamp : ''
}

{
	#category : #running,
	#timestamp : 'stlu 12/14/2020 11:54'
}
SLDemo >> render [

	GL setClearColor: Color white.
	GL clear: GL_COLOR_BUFFER_BIT.
	
	vao boundDuring: [
		program useDuring: [
			| time |
			time := (Time millisecondClock / 1000) sin.
			(program uniformNamed: 'time') setTo: time asFloat.
			vbo draw: GL_TRIANGLES from: 0 count: 3]].
	
	GL checkForError
]

{
	#category : #running,
	#timestamp : 'stlu 12/8/2020 17:51'
}
SLDemo >> setUp [

	program := SLDemoProgram instance.
	program use.
	
	vao := GLVertexArray create.
	vao bind.
	
	vbo := GLBuffer create.
	vbo bind.
	vbo
		usage: GL_STATIC_DRAW
		data: #(
			-0.5 -0.5
			0.5 -0.5
			0.0 0.5) asFloat32Array.
	
	program
		vertexAttrib: program aPosLocation
		components: 2
		stride: 8
		offset: 0.
	
	GL checkForError
]

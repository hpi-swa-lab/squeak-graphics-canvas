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
	#timestamp : 'zagto 12/15/2020 19:11'
}
SLDemo >> render [

	GL setClearColor: Color black.
	GL clear: (GL_COLOR_BUFFER_BIT bitOr: GL_DEPTH_BUFFER_BIT).
	

	
	vao boundDuring: [
		program useDuring: [
			| time model view projection |
			time := (Time millisecondClock / 100) \\ 360.
			model :=  (Matrix4x4 withOffset: 0@0@ 0) * (Matrix4x4 withRotation: time around: 0 @ 1 @ 0) .
			view := Matrix4x4 withOffset: 0 @ 0 @ 1.
			projection := Matrix4x4 perspectiveAngleOfView: 90 ratio: 4/3 near: 0.1 far: 100.
			(program uniformNamed: 'model') setTo: model.
			(program uniformNamed: 'view') setTo: view.
			(program uniformNamed: 'projection') setTo: projection.
			"(program uniformNamed: 'time') setTo: time asFloat."
			vbo draw: GL_TRIANGLES from: 0 count: 36]].
	
	GL checkForError
]

{
	#category : #running,
	#timestamp : 'zagto 12/15/2020 17:52'
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
		  -0.5 -0.5 -0.5 0.0 0.0 -1.0
		  0.5 -0.5 -0.5 0.0 0.0 -1.0
		  0.5 0.5 -0.5 0.0 0.0 -1.0
		  0.5 0.5 -0.5 0.0 0.0 -1.0
		  -0.5 0.5 -0.5 0.0 0.0 -1.0
		  -0.5 -0.5 -0.5 0.0 0.0 -1.0
		  
		  -0.5 -0.5 0.5 0.0 0.0 1.0
		  0.5 -0.5 0.5 0.0 0.0 1.0
		  0.5 0.5 0.5 0.0 0.0 1.0
		  0.5 0.5 0.5 0.0 0.0 1.0
		  -0.5 0.5 0.5 0.0 0.0 1.0
		  -0.5 -0.5 0.5 0.0 0.0 1.0
		  
		  -0.5 0.5 0.5 -1.0 0.0 0.0
		  -0.5 0.5 -0.5 -1.0 0.0 0.0
		  -0.5 -0.5 -0.5 -1.0 0.0 0.0
		  -0.5 -0.5 -0.5 -1.0 0.0 0.0
		  -0.5 -0.5 0.5 -1.0 0.0 0.0
		  -0.5 0.5 0.5 -1.0 0.0 0.0
		  
		  0.5 0.5 0.5 1.0 0.0 0.0
		  0.5 0.5 -0.5 1.0 0.0 0.0
		  0.5 -0.5 -0.5 1.0 0.0 0.0
		  0.5 -0.5 -0.5 1.0 0.0 0.0
		  0.5 -0.5 0.5 1.0 0.0 0.0
		  0.5 0.5 0.5 1.0 0.0 0.0
		  
		  -0.5 -0.5 -0.5 0.0 -1.0 0.0
		  0.5 -0.5 -0.5 0.0 -1.0 0.0
		  0.5 -0.5 0.5 0.0 -1.0 0.0
		  0.5 -0.5 0.5 0.0 -1.0 0.0
		  -0.5 -0.5 0.5 0.0 -1.0 0.0
		  -0.5 -0.5 -0.5 0.0 -1.0 0.0
		  
		  -0.5 0.5 -0.5 0.0 1.0 0.0
		  0.5 0.5 -0.5 0.0 1.0 0.0
		  0.5 0.5 0.5 0.0 1.0 0.0
		  0.5 0.5 0.5 0.0 1.0 0.0
		  -0.5 0.5 0.5 0.0 1.0 0.0
		  -0.5 0.5 -0.5 0.0 1.0 0.0
			) asFloat32Array.
	
	program
		vertexAttrib: program aPosLocation
		components: 3
		stride: 4*6
		offset: 0.
		
	program
		vertexAttrib: program aNormalLocation
		components: 3
		stride: 4*6
		offset: 4*3.
		
	GL enable: GL_DEPTH_TEST.
	
	GL checkForError
]

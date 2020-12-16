Class {
	#name : #SLDemo,
	#superclass : #LOGLTemplate,
	#instVars : [
		'camera',
		'program',
		'vbo',
		'vao'
	],
	#category : #'ShadingLanguage-Examples',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/16/2020 18:15'
}
SLDemo >> cubeData [

	^ #(
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
	) asFloat32Array
]

{
	#category : #running,
	#timestamp : 'stlu 12/16/2020 21:30'
}
SLDemo >> render [

	GL enable: GL_DEPTH_TEST.
	GL setClearColor: (Color r: 0.1 g: 0.1 b: 0.1).
	GL clear: (GL_COLOR_BUFFER_BIT bitOr: GL_DEPTH_BUFFER_BIT).
	
	vao boundDuring: [
		program useDuring: [
			| extent time model view projection secondsPerLoop |
			extent := window framebufferExtent.
			secondsPerLoop := 10.
			time := Time millisecondClock \\ (secondsPerLoop * 1000) / (secondsPerLoop * 1000).
			model := (Matrix4x4 withOffset: 0@0@ -5) * (Matrix4x4 withRotation: time * 360 around: 0 @ 1 @ 0).
			view := camera viewMatrix.
			projection := Matrix4x4
							perspective: camera zoom degreesToRadians
							aspectRatio: extent x / extent y
							near: 0.1 far: 100.0.
			program uniforms
				model: model;
				view: view;
				projection: projection.
			vbo draw: GL_TRIANGLES from: 0 count: 36]].
	
	GL checkForError
]

{
	#category : #running,
	#timestamp : 'stlu 12/16/2020 18:19'
}
SLDemo >> setUp [

	camera := LOGLCamera position: 0.0 @ 0.0 @ 3.0.

	program := SLDemoProgram instance.
	program use.
	
	vao := GLVertexArray create.
	vao bind.
	
	vbo := GLBuffer create.
	vbo bind.
	vbo usage: GL_STATIC_DRAW data: self cubeData.
	
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
	
	GL checkForError
]

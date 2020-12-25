Class {
	#name : #LOGLHelloRectangle,
	#superclass : #LOGLHelloTriangle,
	#instVars : [
		'ebo'
	],
	#category : #'LearnOpenGL-GettingStarted',
	#commentStamp : ''
}

{
	#category : #running,
	#timestamp : 'stlu 12/22/2020 15:02'
}
LOGLHelloRectangle >> draw [

	GL
		drawElements: GL_TRIANGLES
		with: 6
		with: GL_UNSIGNED_INT
		with: (ExternalAddress fromInteger: 0)
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/22/2020 15:01'
}
LOGLHelloRectangle >> indices [

	^ #(
			0 1 3
			1 2 3
		) asWordArray
]

{
	#category : #running,
	#timestamp : 'stlu 12/22/2020 15:14'
}
LOGLHelloRectangle >> setUp [

	GL polygonMode: GL_FRONT_AND_BACK with: GL_LINE.
	
	super setUp.
	
	ebo := GLBuffer create.
	ebo target: GL_ELEMENT_ARRAY_BUFFER.
	
	vao boundDuring: [
		ebo bind.
		ebo usage: GL_STATIC_DRAW data: self indices].
	
	GL checkForError
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/22/2020 14:37'
}
LOGLHelloRectangle >> vertices [

	^ #(
			0.5 0.5 0.0
			0.5 -0.5 0.0
			-0.5 -0.5 0.0
			-0.5 0.5 0.0
		) asFloat32Array
]

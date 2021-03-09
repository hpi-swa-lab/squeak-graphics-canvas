Class {
	#name : #GLCanvasSolidPolygonProgram,
	#superclass : #GLCanvasPolygonProgram,
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasSolidPolygonProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderSolidFillStyle
]

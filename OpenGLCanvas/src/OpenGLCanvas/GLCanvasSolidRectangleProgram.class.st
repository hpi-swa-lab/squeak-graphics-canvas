Class {
	#name : #GLCanvasSolidRectangleProgram,
	#superclass : #GLCanvasRectangleProgram,
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasSolidRectangleProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderSolidFillStyle
]

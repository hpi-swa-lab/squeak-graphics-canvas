Class {
	#name : #GLCanvasSolidRectangleProgram,
	#superclass : #GLCanvasRectangleProgram,
	#category : #'OpenGLCanvas-Core',
	#'squeak_changestamp' : ''
}

{
	#category : #'shader code',
	#'squeak_changestamp' : ''
}
GLCanvasSolidRectangleProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderSolidFillStyle
]

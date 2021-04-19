Class {
	#name : #GLCanvasGradientPolygonProgram,
	#superclass : #GLCanvasPolygonProgram,
	#category : #'OpenGLCanvas-Core',
	#'squeak_changestamp' : ''
}

{
	#category : #'shader code',
	#'squeak_changestamp' : ''
}
GLCanvasGradientPolygonProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderGradientFillStyle
]

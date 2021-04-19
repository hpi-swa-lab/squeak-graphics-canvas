Class {
	#name : #GLCanvasSolidOvalProgram,
	#superclass : #GLCanvasOvalProgram,
	#category : #'OpenGLCanvas-Core',
	#'squeak_changestamp' : ''
}

{
	#category : #'shader code',
	#'squeak_changestamp' : ''
}
GLCanvasSolidOvalProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderSolidFillStyle
]

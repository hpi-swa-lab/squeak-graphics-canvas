Class {
	#name : #GLCanvasGradientOvalProgram,
	#superclass : #GLCanvasOvalProgram,
	#category : #'OpenGLCanvas-Core',
	#'squeak_changestamp' : ''
}

{
	#category : #'shader code',
	#'squeak_changestamp' : ''
}
GLCanvasGradientOvalProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderGradientFillStyle
]

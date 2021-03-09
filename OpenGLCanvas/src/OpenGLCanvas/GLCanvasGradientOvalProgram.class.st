Class {
	#name : #GLCanvasGradientOvalProgram,
	#superclass : #GLCanvasOvalProgram,
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasGradientOvalProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderGradientFillStyle
]

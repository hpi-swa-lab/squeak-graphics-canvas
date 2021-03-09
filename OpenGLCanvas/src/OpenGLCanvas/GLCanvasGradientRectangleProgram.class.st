Class {
	#name : #GLCanvasGradientRectangleProgram,
	#superclass : #GLCanvasRectangleProgram,
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasGradientRectangleProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderGradientFillStyle
]

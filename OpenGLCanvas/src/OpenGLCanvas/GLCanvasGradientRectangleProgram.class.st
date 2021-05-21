Class {
	#name : #GLCanvasGradientRectangleProgram,
	#superclass : #GLCanvasRectangleProgram,
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasGradientRectangleProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderGradientFillStyle
]

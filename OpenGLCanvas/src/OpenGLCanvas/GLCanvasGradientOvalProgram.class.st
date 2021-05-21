Class {
	#name : #GLCanvasGradientOvalProgram,
	#superclass : #GLCanvasOvalProgram,
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasGradientOvalProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderGradientFillStyle
]

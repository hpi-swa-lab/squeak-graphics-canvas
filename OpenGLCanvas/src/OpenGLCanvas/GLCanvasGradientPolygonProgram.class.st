Class {
	#name : #GLCanvasGradientPolygonProgram,
	#superclass : #GLCanvasPolygonProgram,
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasGradientPolygonProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderGradientFillStyle
]

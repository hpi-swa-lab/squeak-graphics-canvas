Class {
	#name : #GLCanvasSolidRectangleProgram,
	#superclass : #GLCanvasRectangleProgram,
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasSolidRectangleProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderSolidFillStyle
]

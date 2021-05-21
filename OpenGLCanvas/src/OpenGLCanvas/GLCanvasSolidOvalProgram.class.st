Class {
	#name : #GLCanvasSolidOvalProgram,
	#superclass : #GLCanvasOvalProgram,
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasSolidOvalProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderSolidFillStyle
]

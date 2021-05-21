Class {
	#name : #GLCanvasSolidPolygonProgram,
	#superclass : #GLCanvasPolygonProgram,
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasSolidPolygonProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderSolidFillStyle
]

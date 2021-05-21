Class {
	#name : #GLCanvasBitmapPolygonProgram,
	#superclass : #GLCanvasPolygonProgram,
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasBitmapPolygonProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderBitmapFillStyle
]

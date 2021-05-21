Class {
	#name : #GLCanvasBitmapRectangleProgram,
	#superclass : #GLCanvasRectangleProgram,
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasBitmapRectangleProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderBitmapFillStyle
]

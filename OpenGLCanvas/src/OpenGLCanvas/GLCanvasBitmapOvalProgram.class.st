Class {
	#name : #GLCanvasBitmapOvalProgram,
	#superclass : #GLCanvasOvalProgram,
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasBitmapOvalProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderBitmapFillStyle
]

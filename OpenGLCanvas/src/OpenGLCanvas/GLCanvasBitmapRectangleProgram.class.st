Class {
	#name : #GLCanvasBitmapRectangleProgram,
	#superclass : #GLCanvasRectangleProgram,
	#category : #'OpenGLCanvas-Core',
	#'squeak_changestamp' : ''
}

{
	#category : #'shader code',
	#'squeak_changestamp' : ''
}
GLCanvasBitmapRectangleProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderBitmapFillStyle
]

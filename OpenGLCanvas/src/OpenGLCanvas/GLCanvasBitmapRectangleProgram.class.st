Class {
	#name : #GLCanvasBitmapRectangleProgram,
	#superclass : #GLCanvasRectangleProgram,
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasBitmapRectangleProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderBitmapFillStyle
]

Class {
	#name : #GLCanvasBitmapOvalProgram,
	#superclass : #GLCanvasOvalProgram,
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasBitmapOvalProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderBitmapFillStyle
]

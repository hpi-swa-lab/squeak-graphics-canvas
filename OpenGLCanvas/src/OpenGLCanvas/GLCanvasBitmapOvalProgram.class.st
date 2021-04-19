Class {
	#name : #GLCanvasBitmapOvalProgram,
	#superclass : #GLCanvasOvalProgram,
	#category : #'OpenGLCanvas-Core',
	#'squeak_changestamp' : ''
}

{
	#category : #'shader code',
	#'squeak_changestamp' : ''
}
GLCanvasBitmapOvalProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderBitmapFillStyle
]

Class {
	#name : #GLCanvasBitmapPolygonProgram,
	#superclass : #GLCanvasPolygonProgram,
	#category : #'OpenGLCanvas-Core',
	#'squeak_changestamp' : ''
}

{
	#category : #'shader code',
	#'squeak_changestamp' : ''
}
GLCanvasBitmapPolygonProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderBitmapFillStyle
]

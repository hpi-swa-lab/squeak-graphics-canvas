Class {
	#name : #GLCanvasBitmapPolygonProgram,
	#superclass : #GLCanvasPolygonProgram,
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasBitmapPolygonProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderBitmapFillStyle
]

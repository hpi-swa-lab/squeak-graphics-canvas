Class {
	#name : #GLCanvasGradientPolygonProgram,
	#superclass : #GLCanvasPolygonProgram,
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasGradientPolygonProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderGradientFillStyle
]

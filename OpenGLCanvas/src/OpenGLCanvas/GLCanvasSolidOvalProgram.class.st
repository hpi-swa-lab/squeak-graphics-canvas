Class {
	#name : #GLCanvasSolidOvalProgram,
	#superclass : #GLCanvasOvalProgram,
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasSolidOvalProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderSolidFillStyle
]

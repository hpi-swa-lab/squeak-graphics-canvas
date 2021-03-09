Class {
	#name : #GLCanvasSolidPolygonProgram,
	#superclass : #GLCanvasPolygonProgram,
	#instVars : [
		'mvpLocation',
		'colorLocation',
		'aPosLocation'
	],
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasSolidPolygonProgram class >> fillStyleUniforms [

	^ self uniformsSolidFillStyle
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasSolidPolygonProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderSolidFillStyle
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidPolygonProgram >> aPosLocation [

	^ aPosLocation
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidPolygonProgram >> color: anObject [

	self uniform: colorLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidPolygonProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	colorLocation := self registerUniform: 'color'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidPolygonProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

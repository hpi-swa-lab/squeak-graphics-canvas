Class {
	#name : #GLCanvasSolidRectangleProgram,
	#superclass : #GLCanvasRectangleProgram,
	#instVars : [
		'mvpLocation',
		'extentLocation',
		'borderColorLocation',
		'borderWidthLocation',
		'colorLocation',
		'aPosLocation',
		'originLocation',
		'cornerRadiusLocation'
	],
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasSolidRectangleProgram class >> fillStyleUniforms [

	^ self uniformsSolidFillStyle
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasSolidRectangleProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderSolidFillStyle
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidRectangleProgram >> aPosLocation [

	^ aPosLocation
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidRectangleProgram >> borderColor: anObject [

	self uniform: borderColorLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidRectangleProgram >> borderWidth: anObject [

	self uniform: borderWidthLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidRectangleProgram >> color: anObject [

	self uniform: colorLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidRectangleProgram >> cornerRadius: anObject [

	self uniform: cornerRadiusLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidRectangleProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidRectangleProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	extentLocation := self registerUniform: 'extent'.
	originLocation := self registerUniform: 'origin'.
	borderColorLocation := self registerUniform: 'borderColor'.
	borderWidthLocation := self registerUniform: 'borderWidth'.
	cornerRadiusLocation := self registerUniform: 'cornerRadius'.
	colorLocation := self registerUniform: 'color'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidRectangleProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidRectangleProgram >> origin: anObject [

	self uniform: originLocation value: anObject
]

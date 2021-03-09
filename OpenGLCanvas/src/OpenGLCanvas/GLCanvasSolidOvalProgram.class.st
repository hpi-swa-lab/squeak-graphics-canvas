Class {
	#name : #GLCanvasSolidOvalProgram,
	#superclass : #GLCanvasOvalProgram,
	#instVars : [
		'mvpLocation',
		'extentLocation',
		'borderColorLocation',
		'borderWidthLocation',
		'colorLocation',
		'aPosLocation',
		'originLocation'
	],
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasSolidOvalProgram class >> fillStyleUniforms [

	^ self uniformsSolidFillStyle
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasSolidOvalProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderSolidFillStyle
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidOvalProgram >> aPosLocation [

	^ aPosLocation
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidOvalProgram >> borderColor: anObject [

	self uniform: borderColorLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidOvalProgram >> borderWidth: anObject [

	self uniform: borderWidthLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidOvalProgram >> color: anObject [

	self uniform: colorLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidOvalProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidOvalProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	extentLocation := self registerUniform: 'extent'.
	originLocation := self registerUniform: 'origin'.
	borderColorLocation := self registerUniform: 'borderColor'.
	borderWidthLocation := self registerUniform: 'borderWidth'.
	colorLocation := self registerUniform: 'color'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidOvalProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasSolidOvalProgram >> origin: anObject [

	self uniform: originLocation value: anObject
]

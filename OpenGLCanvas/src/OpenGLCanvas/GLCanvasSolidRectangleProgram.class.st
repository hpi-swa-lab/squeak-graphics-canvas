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
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'as yet unclassified' }
GLCanvasSolidRectangleProgram class >> fillStyleUniforms [

	^ self uniformsSolidFillStyle
]

{ #category : #'as yet unclassified' }
GLCanvasSolidRectangleProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderSolidFillStyle
]

{ #category : #generated }
GLCanvasSolidRectangleProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #generated }
GLCanvasSolidRectangleProgram >> borderColor: anObject [

	self uniform: borderColorLocation value: anObject
]

{ #category : #generated }
GLCanvasSolidRectangleProgram >> borderWidth: anObject [

	self uniform: borderWidthLocation value: anObject
]

{ #category : #generated }
GLCanvasSolidRectangleProgram >> color: anObject [

	self uniform: colorLocation value: anObject
]

{ #category : #generated }
GLCanvasSolidRectangleProgram >> cornerRadius: anObject [

	self uniform: cornerRadiusLocation value: anObject
]

{ #category : #generated }
GLCanvasSolidRectangleProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{ #category : #generated }
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

{ #category : #generated }
GLCanvasSolidRectangleProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{ #category : #generated }
GLCanvasSolidRectangleProgram >> origin: anObject [

	self uniform: originLocation value: anObject
]

Class {
	#name : #GLCanvasSolidPolygonProgram,
	#superclass : #GLCanvasPolygonProgram,
	#instVars : [
		'mvpLocation',
		'colorLocation',
		'aPosLocation'
	],
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'as yet unclassified' }
GLCanvasSolidPolygonProgram class >> fragmentShaderFillColor [

	^ GLSharedCanvasResources fragmentShaderSolidFillStyle
]

{ #category : #nil }
GLCanvasSolidPolygonProgram class >> uniforms [

	^ super uniforms , GLSharedCanvasResources uniformsSolidFillStyle
]

{ #category : #generated }
GLCanvasSolidPolygonProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #generated }
GLCanvasSolidPolygonProgram >> color: anObject [

	self uniform: colorLocation value: anObject
]

{ #category : #generated }
GLCanvasSolidPolygonProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	colorLocation := self registerUniform: 'color'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{ #category : #generated }
GLCanvasSolidPolygonProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

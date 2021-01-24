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

{ #category : #nil }
GLCanvasSolidPolygonProgram class >> fillStyleUniforms [

	^ self uniformsSolidFillStyle
]

{ #category : #'as yet unclassified' }
GLCanvasSolidPolygonProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderSolidFillStyle
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

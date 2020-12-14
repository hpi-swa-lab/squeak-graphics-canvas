Class {
	#name : #GLCanvasSolidOvalProgram,
	#superclass : #GLCanvasOvalProgram,
	#instVars : [
		'mvpLocation',
		'extentLocation',
		'borderColorLocation',
		'borderWidthLocation',
		'colorLocation',
		'aPosLocation'
	],
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'as yet unclassified' }
GLCanvasSolidOvalProgram class >> fragmentShaderFillColor [

	^ GLSharedCanvasResources fragmentShaderSolidFillStyle
]

{ #category : #'as yet unclassified' }
GLCanvasSolidOvalProgram class >> uniforms [

	^ super uniforms , GLSharedCanvasResources uniformsSolidFillStyle
]

{ #category : #generated }
GLCanvasSolidOvalProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #generated }
GLCanvasSolidOvalProgram >> borderColor: anObject [

	self uniform: borderColorLocation value: anObject
]

{ #category : #generated }
GLCanvasSolidOvalProgram >> borderWidth: anObject [

	self uniform: borderWidthLocation value: anObject
]

{ #category : #generated }
GLCanvasSolidOvalProgram >> color: anObject [

	self uniform: colorLocation value: anObject
]

{ #category : #generated }
GLCanvasSolidOvalProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{ #category : #generated }
GLCanvasSolidOvalProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	extentLocation := self registerUniform: 'extent'.
	borderColorLocation := self registerUniform: 'borderColor'.
	borderWidthLocation := self registerUniform: 'borderWidth'.
	colorLocation := self registerUniform: 'color'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{ #category : #generated }
GLCanvasSolidOvalProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

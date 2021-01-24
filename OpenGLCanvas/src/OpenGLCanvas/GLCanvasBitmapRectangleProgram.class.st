Class {
	#name : #GLCanvasBitmapRectangleProgram,
	#superclass : #GLCanvasRectangleProgram,
	#instVars : [
		'mvpLocation',
		'extentLocation',
		'borderColorLocation',
		'borderWidthLocation',
		'formLocation',
		'formOriginLocation',
		'formDirectionLocation',
		'formNormalLocation',
		'aPosLocation',
		'originLocation',
		'cornerRadiusLocation'
	],
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'as yet unclassified' }
GLCanvasBitmapRectangleProgram class >> fillStyleUniforms [

	^ self uniformsBitmapFillStyle
]

{ #category : #'as yet unclassified' }
GLCanvasBitmapRectangleProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderBitmapFillStyle
]

{ #category : #generated }
GLCanvasBitmapRectangleProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #generated }
GLCanvasBitmapRectangleProgram >> borderColor: anObject [

	self uniform: borderColorLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapRectangleProgram >> borderWidth: anObject [

	self uniform: borderWidthLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapRectangleProgram >> cornerRadius: anObject [

	self uniform: cornerRadiusLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapRectangleProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapRectangleProgram >> form: anObject [

	self uniform: formLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapRectangleProgram >> formDirection: anObject [

	self uniform: formDirectionLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapRectangleProgram >> formNormal: anObject [

	self uniform: formNormalLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapRectangleProgram >> formOrigin: anObject [

	self uniform: formOriginLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapRectangleProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	extentLocation := self registerUniform: 'extent'.
	originLocation := self registerUniform: 'origin'.
	borderColorLocation := self registerUniform: 'borderColor'.
	borderWidthLocation := self registerUniform: 'borderWidth'.
	cornerRadiusLocation := self registerUniform: 'cornerRadius'.
	formLocation := self registerUniform: 'form'.
	formOriginLocation := self registerUniform: 'formOrigin'.
	formDirectionLocation := self registerUniform: 'formDirection'.
	formNormalLocation := self registerUniform: 'formNormal'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{ #category : #generated }
GLCanvasBitmapRectangleProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapRectangleProgram >> origin: anObject [

	self uniform: originLocation value: anObject
]

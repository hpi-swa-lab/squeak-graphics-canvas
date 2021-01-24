Class {
	#name : #GLCanvasBitmapOvalProgram,
	#superclass : #GLCanvasOvalProgram,
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
		'originLocation'
	],
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'as yet unclassified' }
GLCanvasBitmapOvalProgram class >> fillStyleUniforms [

	^ self uniformsBitmapFillStyle
]

{ #category : #'as yet unclassified' }
GLCanvasBitmapOvalProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderBitmapFillStyle
]

{ #category : #generated }
GLCanvasBitmapOvalProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #generated }
GLCanvasBitmapOvalProgram >> borderColor: anObject [

	self uniform: borderColorLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapOvalProgram >> borderWidth: anObject [

	self uniform: borderWidthLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapOvalProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapOvalProgram >> form: anObject [

	self uniform: formLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapOvalProgram >> formDirection: anObject [

	self uniform: formDirectionLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapOvalProgram >> formNormal: anObject [

	self uniform: formNormalLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapOvalProgram >> formOrigin: anObject [

	self uniform: formOriginLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapOvalProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	extentLocation := self registerUniform: 'extent'.
	originLocation := self registerUniform: 'origin'.
	borderColorLocation := self registerUniform: 'borderColor'.
	borderWidthLocation := self registerUniform: 'borderWidth'.
	formLocation := self registerUniform: 'form'.
	formOriginLocation := self registerUniform: 'formOrigin'.
	formDirectionLocation := self registerUniform: 'formDirection'.
	formNormalLocation := self registerUniform: 'formNormal'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{ #category : #generated }
GLCanvasBitmapOvalProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapOvalProgram >> origin: anObject [

	self uniform: originLocation value: anObject
]

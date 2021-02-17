Class {
	#name : #GLCanvasBitmapPolygonProgram,
	#superclass : #GLCanvasPolygonProgram,
	#instVars : [
		'mvpLocation',
		'formLocation',
		'formOriginLocation',
		'formDirectionLocation',
		'formNormalLocation',
		'aPosLocation'
	],
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasBitmapPolygonProgram class >> fillStyleUniforms [

	^ self uniformsBitmapFillStyle
]

{ #category : #'shader code' }
GLCanvasBitmapPolygonProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderBitmapFillStyle
]

{ #category : #generated }
GLCanvasBitmapPolygonProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #generated }
GLCanvasBitmapPolygonProgram >> form: anObject [

	self uniform: formLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapPolygonProgram >> formDirection: anObject [

	self uniform: formDirectionLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapPolygonProgram >> formNormal: anObject [

	self uniform: formNormalLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapPolygonProgram >> formOrigin: anObject [

	self uniform: formOriginLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapPolygonProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	formLocation := self registerUniform: 'form'.
	formOriginLocation := self registerUniform: 'formOrigin'.
	formDirectionLocation := self registerUniform: 'formDirection'.
	formNormalLocation := self registerUniform: 'formNormal'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{ #category : #generated }
GLCanvasBitmapPolygonProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

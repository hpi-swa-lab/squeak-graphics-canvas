Class {
	#name : #GLCanvasGradientPolygonProgram,
	#superclass : #GLCanvasPolygonProgram,
	#instVars : [
		'mvpLocation',
		'pixelRampLocation',
		'gradientOriginLocation',
		'gradientDirectionLocation',
		'gradientRadialLocation',
		'aPosLocation'
	],
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasGradientPolygonProgram class >> fillStyleUniforms [

	^ self uniformsGradientFillStyle
]

{ #category : #'shader code' }
GLCanvasGradientPolygonProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderGradientFillStyle
]

{ #category : #generated }
GLCanvasGradientPolygonProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #generated }
GLCanvasGradientPolygonProgram >> gradientDirection: anObject [

	self uniform: gradientDirectionLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientPolygonProgram >> gradientOrigin: anObject [

	self uniform: gradientOriginLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientPolygonProgram >> gradientRadial: anObject [

	self uniform: gradientRadialLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientPolygonProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	pixelRampLocation := self registerUniform: 'pixelRamp'.
	gradientOriginLocation := self registerUniform: 'gradientOrigin'.
	gradientDirectionLocation := self registerUniform: 'gradientDirection'.
	gradientRadialLocation := self registerUniform: 'gradientRadial'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{ #category : #generated }
GLCanvasGradientPolygonProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientPolygonProgram >> pixelRamp: anObject [

	self uniform: pixelRampLocation value: anObject
]

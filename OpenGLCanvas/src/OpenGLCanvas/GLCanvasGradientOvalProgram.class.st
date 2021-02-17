Class {
	#name : #GLCanvasGradientOvalProgram,
	#superclass : #GLCanvasOvalProgram,
	#instVars : [
		'mvpLocation',
		'extentLocation',
		'borderColorLocation',
		'borderWidthLocation',
		'pixelRampLocation',
		'gradientOriginLocation',
		'gradientDirectionLocation',
		'gradientRadialLocation',
		'aPosLocation',
		'originLocation'
	],
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasGradientOvalProgram class >> fillStyleUniforms [

	^ self uniformsGradientFillStyle
]

{ #category : #'shader code' }
GLCanvasGradientOvalProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderGradientFillStyle
]

{ #category : #generated }
GLCanvasGradientOvalProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #generated }
GLCanvasGradientOvalProgram >> borderColor: anObject [

	self uniform: borderColorLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientOvalProgram >> borderWidth: anObject [

	self uniform: borderWidthLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientOvalProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientOvalProgram >> gradientDirection: anObject [

	self uniform: gradientDirectionLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientOvalProgram >> gradientOrigin: anObject [

	self uniform: gradientOriginLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientOvalProgram >> gradientRadial: anObject [

	self uniform: gradientRadialLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientOvalProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	extentLocation := self registerUniform: 'extent'.
	originLocation := self registerUniform: 'origin'.
	borderColorLocation := self registerUniform: 'borderColor'.
	borderWidthLocation := self registerUniform: 'borderWidth'.
	pixelRampLocation := self registerUniform: 'pixelRamp'.
	gradientOriginLocation := self registerUniform: 'gradientOrigin'.
	gradientDirectionLocation := self registerUniform: 'gradientDirection'.
	gradientRadialLocation := self registerUniform: 'gradientRadial'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{ #category : #generated }
GLCanvasGradientOvalProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientOvalProgram >> origin: anObject [

	self uniform: originLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientOvalProgram >> pixelRamp: anObject [

	self uniform: pixelRampLocation value: anObject
]

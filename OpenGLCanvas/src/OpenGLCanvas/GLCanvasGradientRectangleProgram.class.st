Class {
	#name : #GLCanvasGradientRectangleProgram,
	#superclass : #GLCanvasRectangleProgram,
	#instVars : [
		'mvpLocation',
		'extentLocation',
		'borderColorLocation',
		'borderWidthLocation',
		'pixelRampLocation',
		'gradientOriginLocation',
		'gradientDirectionLocation',
		'gradientRadialLocation',
		'aPosLocation'
	],
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'as yet unclassified' }
GLCanvasGradientRectangleProgram class >> fragmentShaderFillColor [

	^ GLSharedCanvasResources fragmentShaderGradientFillStyle
]

{ #category : #'as yet unclassified' }
GLCanvasGradientRectangleProgram class >> uniforms [

	^ super uniforms , GLSharedCanvasResources uniformsGradientFillStyle
]

{ #category : #generated }
GLCanvasGradientRectangleProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #generated }
GLCanvasGradientRectangleProgram >> borderColor: anObject [

	self uniform: borderColorLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientRectangleProgram >> borderWidth: anObject [

	self uniform: borderWidthLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientRectangleProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientRectangleProgram >> gradientDirection: anObject [

	self uniform: gradientDirectionLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientRectangleProgram >> gradientOrigin: anObject [

	self uniform: gradientOriginLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientRectangleProgram >> gradientRadial: anObject [

	self uniform: gradientRadialLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientRectangleProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	extentLocation := self registerUniform: 'extent'.
	borderColorLocation := self registerUniform: 'borderColor'.
	borderWidthLocation := self registerUniform: 'borderWidth'.
	pixelRampLocation := self registerUniform: 'pixelRamp'.
	gradientOriginLocation := self registerUniform: 'gradientOrigin'.
	gradientDirectionLocation := self registerUniform: 'gradientDirection'.
	gradientRadialLocation := self registerUniform: 'gradientRadial'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{ #category : #generated }
GLCanvasGradientRectangleProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientRectangleProgram >> pixelRamp: anObject [

	self uniform: pixelRampLocation value: anObject
]

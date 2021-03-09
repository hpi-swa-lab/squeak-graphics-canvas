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
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasGradientOvalProgram class >> fillStyleUniforms [

	^ self uniformsGradientFillStyle
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasGradientOvalProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderGradientFillStyle
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientOvalProgram >> aPosLocation [

	^ aPosLocation
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientOvalProgram >> borderColor: anObject [

	self uniform: borderColorLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientOvalProgram >> borderWidth: anObject [

	self uniform: borderWidthLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientOvalProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientOvalProgram >> gradientDirection: anObject [

	self uniform: gradientDirectionLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientOvalProgram >> gradientOrigin: anObject [

	self uniform: gradientOriginLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientOvalProgram >> gradientRadial: anObject [

	self uniform: gradientRadialLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
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

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientOvalProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientOvalProgram >> origin: anObject [

	self uniform: originLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientOvalProgram >> pixelRamp: anObject [

	self uniform: pixelRampLocation value: anObject
]

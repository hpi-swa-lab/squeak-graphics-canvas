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
		'aPosLocation',
		'originLocation',
		'cornerRadiusLocation'
	],
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasGradientRectangleProgram class >> fillStyleUniforms [

	^ self uniformsGradientFillStyle
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasGradientRectangleProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderGradientFillStyle
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientRectangleProgram >> aPosLocation [

	^ aPosLocation
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientRectangleProgram >> borderColor: anObject [

	self uniform: borderColorLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientRectangleProgram >> borderWidth: anObject [

	self uniform: borderWidthLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientRectangleProgram >> cornerRadius: anObject [

	self uniform: cornerRadiusLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientRectangleProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientRectangleProgram >> gradientDirection: anObject [

	self uniform: gradientDirectionLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientRectangleProgram >> gradientOrigin: anObject [

	self uniform: gradientOriginLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientRectangleProgram >> gradientRadial: anObject [

	self uniform: gradientRadialLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientRectangleProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	extentLocation := self registerUniform: 'extent'.
	originLocation := self registerUniform: 'origin'.
	borderColorLocation := self registerUniform: 'borderColor'.
	borderWidthLocation := self registerUniform: 'borderWidth'.
	cornerRadiusLocation := self registerUniform: 'cornerRadius'.
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
GLCanvasGradientRectangleProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientRectangleProgram >> origin: anObject [

	self uniform: originLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientRectangleProgram >> pixelRamp: anObject [

	self uniform: pixelRampLocation value: anObject
]

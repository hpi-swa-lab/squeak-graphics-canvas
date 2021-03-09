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
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasGradientPolygonProgram class >> fillStyleUniforms [

	^ self uniformsGradientFillStyle
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasGradientPolygonProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderGradientFillStyle
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientPolygonProgram >> aPosLocation [

	^ aPosLocation
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientPolygonProgram >> gradientDirection: anObject [

	self uniform: gradientDirectionLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientPolygonProgram >> gradientOrigin: anObject [

	self uniform: gradientOriginLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientPolygonProgram >> gradientRadial: anObject [

	self uniform: gradientRadialLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientPolygonProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
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
GLCanvasGradientPolygonProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasGradientPolygonProgram >> pixelRamp: anObject [

	self uniform: pixelRampLocation value: anObject
]

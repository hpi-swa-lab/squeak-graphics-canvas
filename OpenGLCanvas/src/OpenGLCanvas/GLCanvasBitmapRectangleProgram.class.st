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
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasBitmapRectangleProgram class >> fillStyleUniforms [

	^ self uniformsBitmapFillStyle
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasBitmapRectangleProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderBitmapFillStyle
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapRectangleProgram >> aPosLocation [

	^ aPosLocation
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapRectangleProgram >> borderColor: anObject [

	self uniform: borderColorLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapRectangleProgram >> borderWidth: anObject [

	self uniform: borderWidthLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapRectangleProgram >> cornerRadius: anObject [

	self uniform: cornerRadiusLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapRectangleProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapRectangleProgram >> form: anObject [

	self uniform: formLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapRectangleProgram >> formDirection: anObject [

	self uniform: formDirectionLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapRectangleProgram >> formNormal: anObject [

	self uniform: formNormalLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapRectangleProgram >> formOrigin: anObject [

	self uniform: formOriginLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
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

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapRectangleProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapRectangleProgram >> origin: anObject [

	self uniform: originLocation value: anObject
]

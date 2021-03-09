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
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasBitmapOvalProgram class >> fillStyleUniforms [

	^ self uniformsBitmapFillStyle
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasBitmapOvalProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderBitmapFillStyle
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapOvalProgram >> aPosLocation [

	^ aPosLocation
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapOvalProgram >> borderColor: anObject [

	self uniform: borderColorLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapOvalProgram >> borderWidth: anObject [

	self uniform: borderWidthLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapOvalProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapOvalProgram >> form: anObject [

	self uniform: formLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapOvalProgram >> formDirection: anObject [

	self uniform: formDirectionLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapOvalProgram >> formNormal: anObject [

	self uniform: formNormalLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapOvalProgram >> formOrigin: anObject [

	self uniform: formOriginLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
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

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapOvalProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapOvalProgram >> origin: anObject [

	self uniform: originLocation value: anObject
]

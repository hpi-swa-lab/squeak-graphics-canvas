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
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasBitmapPolygonProgram class >> fillStyleUniforms [

	^ self uniformsBitmapFillStyle
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasBitmapPolygonProgram class >> fragmentShaderFillColor [

	^ self fragmentShaderBitmapFillStyle
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapPolygonProgram >> aPosLocation [

	^ aPosLocation
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapPolygonProgram >> form: anObject [

	self uniform: formLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapPolygonProgram >> formDirection: anObject [

	self uniform: formDirectionLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapPolygonProgram >> formNormal: anObject [

	self uniform: formNormalLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapPolygonProgram >> formOrigin: anObject [

	self uniform: formOriginLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasBitmapPolygonProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
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
GLCanvasBitmapPolygonProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

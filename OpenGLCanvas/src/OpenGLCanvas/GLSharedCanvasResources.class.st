"
I contain the resources that GLCanvases need. I contain a Vertex Buffer with vertices for a unit square, different shader programs and fonts.
"
Class {
	#name : #GLSharedCanvasResources,
	#superclass : #Object,
	#instVars : [
		'vao',
		'quadVBO',
		'dynamicVBO',
		'bitmapOvalProgram',
		'bitmapPolygonProgram',
		'gradientPolygonProgram',
		'gradientOvalProgram',
		'textureProgram',
		'solidOvalProgram',
		'solidPolygonProgram',
		'bitmapRectangleProgram',
		'gradientRectangleProgram',
		'solidRectangleProgram',
		'stencilProgram',
		'fonts',
		'fontProgram'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGLCanvas-Core'
}

{ #category : #updating }
GLSharedCanvasResources class >> updateIn: aGLLibrary [
	
	aGLLibrary makeCurrentDuring: [
		aGLLibrary recompileShaders.
		aGLLibrary at: self put: self new].
	
]

{ #category : #programs }
GLSharedCanvasResources >> bitmapOvalProgram [

	^ bitmapOvalProgram
]

{ #category : #programs }
GLSharedCanvasResources >> bitmapPolygonProgram [

	^ bitmapPolygonProgram
]

{ #category : #programs }
GLSharedCanvasResources >> bitmapRectangleProgram [

	^ bitmapRectangleProgram
]

{
	#category : #buffers,
	#'squeak_changestamp' : 'stlu 3/9/2021 15:28'
}
GLSharedCanvasResources >> dynamicVBO [

	^ dynamicVBO
]

{ #category : #fonts }
GLSharedCanvasResources >> font: aFont [

	| font |
	font := aFont ifNil: [TextStyle defaultFont].
	
	^ fonts at: font ifAbsentPut: [GLBitmapFont new font: font]
]

{ #category : #programs }
GLSharedCanvasResources >> fontProgram [

	^ fontProgram
]

{ #category : #programs }
GLSharedCanvasResources >> gradientOvalProgram [

	^ gradientOvalProgram
]

{ #category : #programs }
GLSharedCanvasResources >> gradientPolygonProgram [

	^ gradientPolygonProgram
]

{ #category : #programs }
GLSharedCanvasResources >> gradientRectangleProgram [

	^ gradientRectangleProgram
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/9/2021 15:47'
}
GLSharedCanvasResources >> initialize [

	super initialize.
	
	self initializePrograms.
	self initializeBuffers.
	self initializeFonts.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 9/9/2021 15:45'
}
GLSharedCanvasResources >> initializeBuffers [

	vao := GLVertexArray create.
	vao bind.

	quadVBO := GLBuffer create.
	quadVBO
		usage: GL_STATIC_DRAW
		data: #(
			0.0 0.0 0.0 0.0
			1.0 0.0 1.0 0.0
			0.0 1.0 0.0 1.0
			1.0 1.0 1.0 1.0 ) asFloat32Array.
	
	dynamicVBO := GLBuffer create.
	dynamicVBO usage: GL_DYNAMIC_DRAW size: 100.
	
	self flag: #todo. "should not take the detour over program and program inputs"
	quadVBO boundAsArrayBufferDuring: [
		textureProgram inputs aPos stride: 16 offset: 0.
		textureProgram inputs aTexCoords stride: 16 offset: 8].
	dynamicVBO boundAsArrayBufferDuring: [
		solidPolygonProgram inputs aPos stride: 8 offset: 0].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/9/2021 14:56'
}
GLSharedCanvasResources >> initializeFonts [

	fonts := Dictionary new.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/17/2021 10:38'
}
GLSharedCanvasResources >> initializePrograms [
	
	bitmapOvalProgram := GLCanvasBitmapOvalProgram instance.
	gradientOvalProgram := GLCanvasGradientOvalProgram instance.
	solidOvalProgram := GLCanvasSolidOvalProgram instance.
	
	bitmapPolygonProgram := GLCanvasBitmapPolygonProgram instance.
	gradientPolygonProgram := GLCanvasGradientPolygonProgram instance.
	solidPolygonProgram := GLCanvasSolidPolygonProgram instance.
	
	bitmapRectangleProgram := GLCanvasBitmapRectangleProgram instance.
	gradientRectangleProgram := GLCanvasGradientRectangleProgram instance.
	solidRectangleProgram := GLCanvasSolidRectangleProgram instance.
	
	stencilProgram := GLCanvasStencilProgram instance.
	textureProgram := GLCanvasTextureProgram instance.
	fontProgram := GLCanvasFontProgram instance.
]

{
	#category : #programs,
	#'squeak_changestamp' : 'stlu 3/9/2021 14:54'
}
GLSharedCanvasResources >> ovalPrograms [
	
	^ {
		#solid -> self solidOvalProgram.
		#gradient -> self gradientOvalProgram.
		#bitmap -> self bitmapOvalProgram.
	} as: Dictionary
]

{
	#category : #programs,
	#'squeak_changestamp' : 'stlu 3/9/2021 14:54'
}
GLSharedCanvasResources >> polygonPrograms [

	^ {
		#solid -> self solidPolygonProgram.
		#gradient -> self gradientPolygonProgram.
		#bitmap -> self bitmapPolygonProgram.
	} as: Dictionary
]

{
	#category : #programs,
	#'squeak_changestamp' : 'stlu 3/9/2021 16:44'
}
GLSharedCanvasResources >> programsDo: aBlock [

	aBlock value: bitmapOvalProgram.
	aBlock value: bitmapPolygonProgram.
	aBlock value: bitmapRectangleProgram.
	
	aBlock value: gradientOvalProgram.
	aBlock value: gradientPolygonProgram.
	aBlock value: gradientRectangleProgram.
	
	aBlock value: solidOvalProgram.
	aBlock value: solidPolygonProgram.
	aBlock value: solidRectangleProgram.
	
	aBlock value: fontProgram.
	aBlock value: stencilProgram.
	aBlock value: textureProgram.
]

{
	#category : #buffers,
	#'squeak_changestamp' : 'stlu 3/9/2021 15:00'
}
GLSharedCanvasResources >> quadVBO [

	^ quadVBO
]

{
	#category : #programs,
	#'squeak_changestamp' : 'stlu 3/9/2021 14:55'
}
GLSharedCanvasResources >> rectanglePrograms [
	
	^ {
		#solid -> self solidRectangleProgram.
		#gradient -> self gradientRectangleProgram.
		#bitmap -> self bitmapRectangleProgram.
	} as: Dictionary
]

{ #category : #programs }
GLSharedCanvasResources >> solidOvalProgram [

	^ solidOvalProgram
]

{ #category : #programs }
GLSharedCanvasResources >> solidPolygonProgram [

	^ solidPolygonProgram
]

{ #category : #programs }
GLSharedCanvasResources >> solidRectangleProgram [

	^ solidRectangleProgram
]

{ #category : #programs }
GLSharedCanvasResources >> stencilProgram [

	^ stencilProgram
]

{ #category : #programs }
GLSharedCanvasResources >> textureProgram [

	^ textureProgram
]

{
	#category : #buffers,
	#'squeak_changestamp' : 'stlu 3/9/2021 15:04'
}
GLSharedCanvasResources >> vao [

	^ vao
]

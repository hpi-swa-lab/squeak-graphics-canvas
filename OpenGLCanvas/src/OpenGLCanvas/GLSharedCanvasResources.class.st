"
I contain the resources that GLCanvases need. I contain a Vertex Buffer with vertices for a unit square, different shader programs and fonts.
"
Class {
	#name : #GLSharedCanvasResources,
	#superclass : #Object,
	#instVars : [
		'vbo',
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

{ #category : #accessing }
GLSharedCanvasResources >> bitmapOvalProgram [

	^ bitmapOvalProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> bitmapPolygonProgram [

	^ bitmapPolygonProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> bitmapRectangleProgram [

	^ bitmapRectangleProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> font: aFont [

	| font |
	font := aFont ifNil: [TextStyle defaultFont].
	
	^ fonts at: font ifAbsentPut: [GLBitmapFont new font: font]
]

{ #category : #accessing }
GLSharedCanvasResources >> fontProgram [

	^ fontProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> gradientOvalProgram [

	^ gradientOvalProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> gradientPolygonProgram [

	^ gradientPolygonProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> gradientRectangleProgram [

	^ gradientRectangleProgram
]

{ #category : #initialization }
GLSharedCanvasResources >> initialize [

	super initialize.
	
	fonts := Dictionary new.
	
	self initializePrograms.
	self initializeBuffers.
]

{ #category : #initialization }
GLSharedCanvasResources >> initializeBuffers [

	| vao |
	vao := GLVertexArray create.
	vao bind.
	vbo := GLArrayBuffer create.
	vbo
		usage: GL_STATIC_DRAW
		data: #(
			0.0 0.0 0.0 0.0
			1.0 0.0 1.0 0.0
			0.0 1.0 0.0 1.0
			1.0 1.0 1.0 1.0 ) asFloat32Array.
	GL checkForError.
]

{ #category : #initialization }
GLSharedCanvasResources >> initializePrograms [
	
	bitmapOvalProgram := GL getShaderProgram: GLCanvasBitmapOvalProgram.
	gradientOvalProgram := GL getShaderProgram: GLCanvasGradientOvalProgram.
	solidOvalProgram := GL getShaderProgram: GLCanvasSolidOvalProgram.
	
	bitmapPolygonProgram := GL getShaderProgram: GLCanvasBitmapPolygonProgram.
	gradientPolygonProgram := GL getShaderProgram: GLCanvasGradientPolygonProgram.
	solidPolygonProgram := GL getShaderProgram: GLCanvasSolidPolygonProgram.
	
	bitmapRectangleProgram := GL getShaderProgram: GLCanvasBitmapRectangleProgram.
	gradientRectangleProgram := GL getShaderProgram: GLCanvasGradientRectangleProgram.
	solidRectangleProgram := GL getShaderProgram: GLCanvasSolidRectangleProgram.
	
	stencilProgram := GL getShaderProgram: GLCanvasStencilProgram.
	textureProgram := GL getShaderProgram: GLCanvasTextureProgram.
	fontProgram := GL getShaderProgram: GLCanvasFontProgram.
	GL checkForError.
]

{ #category : #accessing }
GLSharedCanvasResources >> ovalPrograms [
	
	^ {#solid -> self solidOvalProgram . #gradient -> self gradientOvalProgram . #bitmap -> self bitmapOvalProgram} asDictionary
]

{ #category : #accessing }
GLSharedCanvasResources >> polygonPrograms [

	^ {#solid -> self solidPolygonProgram . #gradient -> self gradientPolygonProgram . #bitmap -> self bitmapPolygonProgram} asDictionary
]

{ #category : #accessing }
GLSharedCanvasResources >> rectanglePrograms [
	
	^ {#solid -> self solidRectangleProgram . #gradient -> self gradientRectangleProgram . #bitmap -> self bitmapRectangleProgram} asDictionary
]

{ #category : #accessing }
GLSharedCanvasResources >> solidOvalProgram [

	^ solidOvalProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> solidPolygonProgram [

	^ solidPolygonProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> solidRectangleProgram [

	^ solidRectangleProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> stencilProgram [

	^ stencilProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> textureProgram [

	^ textureProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> vbo [

	^ vbo
]

{ #category : #accessing }
GLSharedCanvasResources >> vbo: anObject [

	vbo := anObject.
]

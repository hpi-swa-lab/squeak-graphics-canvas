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
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #updating,
	#timestamp : ''
}
GLSharedCanvasResources class >> updateIn: aGLLibrary [
	
	aGLLibrary makeCurrentDuring: [
		aGLLibrary recompileShaders.
		aGLLibrary at: self put: self new].
	
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> bitmapOvalProgram [

	^ bitmapOvalProgram
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> bitmapPolygonProgram [

	^ bitmapPolygonProgram
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> bitmapRectangleProgram [

	^ bitmapRectangleProgram
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> font: aFont [

	| font |
	font := aFont ifNil: [TextStyle defaultFont].
	
	^ fonts at: font ifAbsentPut: [GLBitmapFont new font: font]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> fontProgram [

	^ fontProgram
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> gradientOvalProgram [

	^ gradientOvalProgram
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> gradientPolygonProgram [

	^ gradientPolygonProgram
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> gradientRectangleProgram [

	^ gradientRectangleProgram
]

{
	#category : #initialization,
	#timestamp : ''
}
GLSharedCanvasResources >> initialize [

	super initialize.
	
	fonts := Dictionary new.
	
	self initializePrograms.
	self initializeBuffers.
]

{
	#category : #initialization,
	#timestamp : 'stlu 3/9/2021 12:53'
}
GLSharedCanvasResources >> initializeBuffers [

	| vao |
	vao := GLVertexArray create.
	vao bind.
	vbo := GLBuffer create.
	vbo
		usage: GL_STATIC_DRAW
		data: #(
			0.0 0.0 0.0 0.0
			1.0 0.0 1.0 0.0
			0.0 1.0 0.0 1.0
			1.0 1.0 1.0 1.0 ) asFloat32Array.
	GL checkForError.
]

{
	#category : #initialization,
	#timestamp : 'stlu 3/9/2021 12:54'
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
	GL checkForError.
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> ovalPrograms [
	
	^ {#solid -> self solidOvalProgram . #gradient -> self gradientOvalProgram . #bitmap -> self bitmapOvalProgram} asDictionary
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> polygonPrograms [

	^ {#solid -> self solidPolygonProgram . #gradient -> self gradientPolygonProgram . #bitmap -> self bitmapPolygonProgram} asDictionary
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> rectanglePrograms [
	
	^ {#solid -> self solidRectangleProgram . #gradient -> self gradientRectangleProgram . #bitmap -> self bitmapRectangleProgram} asDictionary
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> solidOvalProgram [

	^ solidOvalProgram
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> solidPolygonProgram [

	^ solidPolygonProgram
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> solidRectangleProgram [

	^ solidRectangleProgram
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> stencilProgram [

	^ stencilProgram
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> textureProgram [

	^ textureProgram
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> vbo [

	^ vbo
]

{
	#category : #accessing,
	#timestamp : ''
}
GLSharedCanvasResources >> vbo: anObject [

	vbo := anObject.
]

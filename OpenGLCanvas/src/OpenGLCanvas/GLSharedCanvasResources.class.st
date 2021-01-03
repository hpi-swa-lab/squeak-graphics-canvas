Class {
	#name : #GLSharedCanvasResources,
	#superclass : #Object,
	#instVars : [
		'vao',
		'vbo',
		'bitmapOvalProgram',
		'bitmapPolygonProgram',
		'gradientPolygonProgram',
		'gradientOvalProgram',
		'textureProgram',
		'outlineProgram',
		'solidOvalProgram',
		'solidPolygonProgram',
		'bitmapRectangleProgram',
		'gradientRectangleProgram',
		'solidRectangleProgram',
		'fonts',
		'fontProgram'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGLCanvas-Core'
}

{ #category : #nil }
GLSharedCanvasResources class >> fragmentShaderBitmapFillStyle [
	
^ 'uniform sampler2D form;
uniform vec2 formOrigin;
uniform vec2 formDirection;
uniform vec2 formNormal;

vec4 getColor() {
	vec2 texCoord = vec2(dot(formOrigin - point, normalize(-formDirection)) / length(formDirection),
						    dot(formOrigin - point, normalize(-formNormal)) / length(formNormal));
	return texture(form, texCoord);
}' withUnixLineEndings
]

{ #category : #nil }
GLSharedCanvasResources class >> fragmentShaderGradientFillStyle [

	^ 'uniform sampler2D pixelRamp;
uniform vec2 gradientOrigin;
uniform vec2 gradientDirection;
uniform bool gradientRadial;

vec4 getColor() {
	float texCoord = mix(
		dot(gradientOrigin - point, normalize(-gradientDirection)),
		length(gradientOrigin - point),
		gradientRadial) / length(gradientDirection);
	return texture(pixelRamp, vec2(texCoord,0));
}' withUnixLineEndings
]

{ #category : #'as yet unclassified' }
GLSharedCanvasResources class >> fragmentShaderSolidFillStyle [
	
	^ 'uniform vec4 color;

	vec4 getColor() {
		return color;
	}' withUnixLineEndings
]

{ #category : #'as yet unclassified' }
GLSharedCanvasResources class >> uniformsBitmapFillStyle [

	^ #('form' 'formOrigin' 'formDirection' 'formNormal')
]

{ #category : #'as yet unclassified' }
GLSharedCanvasResources class >> uniformsGradientFillStyle [

	^ #('pixelRamp' 'gradientOrigin' 'gradientDirection' 'gradientRadial')
]

{ #category : #'as yet unclassified' }
GLSharedCanvasResources class >> uniformsSolidFillStyle [

	^ #('color')
]

{ #category : #'as yet unclassified' }
GLSharedCanvasResources class >> updateIn: aGLLibrary [
	
	aGLLibrary makeCurrentDuring: [
		aGLLibrary recompileShaders.
		aGLLibrary at: self put: self new]
	
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
	self initializeBuffers
]

{ #category : #initialization }
GLSharedCanvasResources >> initializeBuffers [

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
	GL checkForError
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
	
	textureProgram := GL getShaderProgram: GLCanvasTextureProgram.
	fontProgram := GL getShaderProgram: GLCanvasFontProgram.
	GL checkForError
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
GLSharedCanvasResources >> textureProgram [

	^ textureProgram
]

{ #category : #accessing }
GLSharedCanvasResources >> vao [

	^ vao
]

{ #category : #accessing }
GLSharedCanvasResources >> vao: anObject [

	vao := anObject.
]

{ #category : #accessing }
GLSharedCanvasResources >> vbo [

	^ vbo
]

{ #category : #accessing }
GLSharedCanvasResources >> vbo: anObject [

	vbo := anObject.
]

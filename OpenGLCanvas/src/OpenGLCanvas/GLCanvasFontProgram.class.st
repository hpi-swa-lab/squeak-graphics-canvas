Class {
	#name : #GLCanvasFontProgram,
	#superclass : #GLStaticProgram,
	#instVars : [
		'extentLocation',
		'colorLocation',
		'mvpLocation',
		'aPosLocation',
		'offsetXLocation',
		'imageLocation'
	],
	#category : #'OpenGLCanvas-Fonts'
}

{ #category : #'as yet unclassified' }
GLCanvasFontProgram class >> attributes [

	^ #('aPos')
]

{ #category : #'as yet unclassified' }
GLCanvasFontProgram class >> fragmentShader [

	^ '#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D image;
uniform vec4 color;

void main() {
  FragColor = texture(image, TexCoords) * color;
}' withUnixLineEndings
]

{ #category : #'as yet unclassified' }
GLCanvasFontProgram class >> uniforms [
	"self compileAccessors"

	^ #('extent' 'offsetX' 'color' 'mvp' 'image')
]

{ #category : #'as yet unclassified' }
GLCanvasFontProgram class >> vertexShader [

	^ '#version 330 core
in vec2 aPos;

uniform float offsetX;
uniform vec2 extent;
uniform mat4 mvp;
uniform sampler2D image;

out vec2 TexCoords;

void main()
{
    TexCoords = (aPos * extent + vec2(offsetX, 0.0)) / textureSize(image, 0);
    gl_Position = mvp * vec4(aPos * extent, 0.0, 1.0);
}' withUnixLineEndings
]

{ #category : #generated }
GLCanvasFontProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #generated }
GLCanvasFontProgram >> color: anObject [

	self uniform: colorLocation value: anObject
]

{ #category : #generated }
GLCanvasFontProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{ #category : #generated }
GLCanvasFontProgram >> image: anObject [

	self uniform: imageLocation value: anObject
]

{ #category : #generated }
GLCanvasFontProgram >> initializeLocations [

	super initializeLocations.
	
	extentLocation := self registerUniform: 'extent'.
	offsetXLocation := self registerUniform: 'offsetX'.
	colorLocation := self registerUniform: 'color'.
	mvpLocation := self registerUniform: 'mvp'.
	imageLocation := self registerUniform: 'image'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{ #category : #generated }
GLCanvasFontProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{ #category : #generated }
GLCanvasFontProgram >> offsetX: anObject [

	self uniform: offsetXLocation value: anObject
]

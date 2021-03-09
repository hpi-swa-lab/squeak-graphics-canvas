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
	#category : #'OpenGLCanvas-Fonts',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasFontProgram class >> attributes [

	^ #('aPos')
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasFontProgram class >> fragmentShader [

	^ '#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D image;
uniform vec4 color;

void main()
{
	FragColor = texture(image, TexCoords) * color ;
}'
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasFontProgram class >> uniforms [
	"self compileAccessors"

	^ #('extent' 'offsetX' 'color' 'mvp' 'image')
]

{
	#category : #'shader code',
	#timestamp : ''
}
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
}'
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasFontProgram >> aPosLocation [

	^ aPosLocation
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasFontProgram >> color: anObject [

	self uniform: colorLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasFontProgram >> extent: anObject [

	self uniform: extentLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasFontProgram >> image: anObject [

	self uniform: imageLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasFontProgram >> initializeLocations [

	super initializeLocations.
	
	extentLocation := self registerUniform: 'extent'.
	offsetXLocation := self registerUniform: 'offsetX'.
	colorLocation := self registerUniform: 'color'.
	mvpLocation := self registerUniform: 'mvp'.
	imageLocation := self registerUniform: 'image'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasFontProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasFontProgram >> offsetX: anObject [

	self uniform: offsetXLocation value: anObject
]

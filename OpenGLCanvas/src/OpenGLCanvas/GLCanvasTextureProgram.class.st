Class {
	#name : #GLCanvasTextureProgram,
	#superclass : #GLStaticProgram,
	#instVars : [
		'mvpLocation',
		'sourcePositionLocation',
		'sourceExtentLocation',
		'imageLocation',
		'aPosLocation',
		'aTexCoordsLocation',
		'colorLocation'
	],
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasTextureProgram class >> attributes [

	^ #('aPos' 'aTexCoords')
]

{ #category : #'shader code' }
GLCanvasTextureProgram class >> fragmentShader [

	^'#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D image;

void main() {
	FragColor = texture(image, TexCoords);
}'
]

{ #category : #'shader code' }
GLCanvasTextureProgram class >> uniforms [

	^ #('mvp' 'sourcePosition' 'sourceExtent' 'image')
]

{ #category : #'shader code' }
GLCanvasTextureProgram class >> vertexShader [

    ^'#version 330 core
in vec2 aPos;
in vec2 aTexCoords;

uniform mat4 mvp;
uniform vec2 sourcePosition;
uniform vec2 sourceExtent;

out vec2 TexCoords;

void main()
{
	TexCoords = aTexCoords * sourceExtent + sourcePosition;
	gl_Position = mvp * vec4(aPos, 0.0, 1.0);
}'
]

{ #category : #generated }
GLCanvasTextureProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #generated }
GLCanvasTextureProgram >> aTexCoordsLocation [

	^ aTexCoordsLocation
]

{ #category : #generated }
GLCanvasTextureProgram >> image: anObject [

	self uniform: imageLocation value: anObject
]

{ #category : #generated }
GLCanvasTextureProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	sourcePositionLocation := self registerUniform: 'sourcePosition'.
	sourceExtentLocation := self registerUniform: 'sourceExtent'.
	imageLocation := self registerUniform: 'image'.
	
	aPosLocation := self registerAttribute: 'aPos'.
	aTexCoordsLocation := self registerAttribute: 'aTexCoords'.
]

{ #category : #generated }
GLCanvasTextureProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{ #category : #generated }
GLCanvasTextureProgram >> sourceExtent: anObject [

	self uniform: sourceExtentLocation value: anObject
]

{ #category : #generated }
GLCanvasTextureProgram >> sourcePosition: anObject [

	self uniform: sourcePositionLocation value: anObject
]

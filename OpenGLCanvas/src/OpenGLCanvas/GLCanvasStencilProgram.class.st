Class {
	#name : #GLCanvasStencilProgram,
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
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasStencilProgram class >> attributes [

	^ #('aPos' 'aTexCoords')
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasStencilProgram class >> fragmentShader [

	^'#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D image;
uniform vec4 color;

void main() {
	if (texture(image, TexCoords) == vec4(0.0, 0.0, 0.0, 0.0))
	{
		discard;
	}
	FragColor = color;
}'
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasStencilProgram class >> uniforms [

	^ #('mvp' 'sourcePosition' 'sourceExtent' 'image' 'color')
]

{
	#category : #'shader code',
	#timestamp : ''
}
GLCanvasStencilProgram class >> vertexShader [

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

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasStencilProgram >> aPosLocation [

	^ aPosLocation
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasStencilProgram >> aTexCoordsLocation [

	^ aTexCoordsLocation
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasStencilProgram >> color: anObject [

	self uniform: colorLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasStencilProgram >> image: anObject [

	self uniform: imageLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasStencilProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	sourcePositionLocation := self registerUniform: 'sourcePosition'.
	sourceExtentLocation := self registerUniform: 'sourceExtent'.
	imageLocation := self registerUniform: 'image'.
	colorLocation := self registerUniform: 'color'.
	
	aPosLocation := self registerAttribute: 'aPos'.
	aTexCoordsLocation := self registerAttribute: 'aTexCoords'.
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasStencilProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasStencilProgram >> sourceExtent: anObject [

	self uniform: sourceExtentLocation value: anObject
]

{
	#category : #generated,
	#timestamp : ''
}
GLCanvasStencilProgram >> sourcePosition: anObject [

	self uniform: sourcePositionLocation value: anObject
]
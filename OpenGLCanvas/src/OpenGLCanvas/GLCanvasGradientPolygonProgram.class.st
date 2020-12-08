Class {
	#name : #GLCanvasGradientPolygonProgram,
	#superclass : #GLStaticProgram,
	#instVars : [
		'mvpLocation',
		'extentLocation',
		'colorLocation',
		'borderColorLocation',
		'borderWidthLocation',
		'aPosLocation',
		'aTexCoordsLocation',
		'pixelRampLocation',
		'gradientOriginLocation',
		'gradientDirectionLocation',
		'gradientNormalLocation',
		'gradientRadialLocation'
	],
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasGradientPolygonProgram class >> attributes [

	^ #('aPos')
]

{ #category : #'shader code' }
GLCanvasGradientPolygonProgram class >> fragmentShader [

	^ '#version 330 core
out vec4 FragColor;

in vec2 point;

uniform sampler2D pixelRamp;
uniform vec2 gradientOrigin;
uniform vec2 gradientDirection;
uniform bool gradientRadial;

void main() {
	float texCoord = mix(
		dot(gradientOrigin - point, normalize(-gradientDirection)),
		length(gradientOrigin - point),
		gradientRadial) / length(gradientDirection);
	FragColor = texture(pixelRamp, vec2(texCoord,0));
}' withUnixLineEndings
]

{ #category : #'shader code' }
GLCanvasGradientPolygonProgram class >> uniforms [

	^ #('mvp' 'pixelRamp' 'gradientOrigin' 'gradientDirection' 'gradientRadial')
]

{ #category : #'shader code' }
GLCanvasGradientPolygonProgram class >> vertexShader [
    ^'#version 330 core
in vec2 aPos;

uniform mat4 mvp;

out vec2 point;

void main()
{
	point = aPos;
	gl_Position = mvp * vec4(point, 0.0, 1.0);
}' withUnixLineEndings
]

{ #category : #generated }
GLCanvasGradientPolygonProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #generated }
GLCanvasGradientPolygonProgram >> gradientDirection: anObject [

	self uniform: gradientDirectionLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientPolygonProgram >> gradientOrigin: anObject [

	self uniform: gradientOriginLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientPolygonProgram >> gradientRadial: anObject [

	self uniform: gradientRadialLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientPolygonProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	pixelRampLocation := self registerUniform: 'pixelRamp'.
	gradientOriginLocation := self registerUniform: 'gradientOrigin'.
	gradientDirectionLocation := self registerUniform: 'gradientDirection'.
	gradientRadialLocation := self registerUniform: 'gradientRadial'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{ #category : #generated }
GLCanvasGradientPolygonProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

{ #category : #generated }
GLCanvasGradientPolygonProgram >> pixelRamp: anObject [

	self uniform: pixelRampLocation value: anObject
]

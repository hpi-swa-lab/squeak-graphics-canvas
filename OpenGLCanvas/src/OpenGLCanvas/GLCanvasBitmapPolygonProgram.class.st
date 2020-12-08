Class {
	#name : #GLCanvasBitmapPolygonProgram,
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
		'gradientRadialLocation',
		'formLocation',
		'formOriginLocation',
		'formDirectionLocation',
		'formNormalLocation'
	],
	#category : #'OpenGLCanvas-Core'
}

{ #category : #'shader code' }
GLCanvasBitmapPolygonProgram class >> attributes [

	^ #('aPos')
]

{ #category : #'shader code' }
GLCanvasBitmapPolygonProgram class >> fragmentShader [

	^ '#version 330 core
out vec4 FragColor;

in vec2 point;

uniform sampler2D form;
uniform vec2 formOrigin;
uniform vec2 formDirection;
uniform vec2 formNormal;

void main() {
	vec2 texCoord = vec2(dot(formOrigin - point, normalize(-formDirection)) / length(formDirection),
						    dot(formOrigin - point, normalize(-formNormal)) / length(formNormal));
	FragColor = texture(form, texCoord);
}' withUnixLineEndings
]

{ #category : #'shader code' }
GLCanvasBitmapPolygonProgram class >> uniforms [

	^ #('mvp' 'form' 'formOrigin' 'formDirection' 'formNormal')
]

{ #category : #'shader code' }
GLCanvasBitmapPolygonProgram class >> vertexShader [
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
GLCanvasBitmapPolygonProgram >> aPosLocation [

	^ aPosLocation
]

{ #category : #generated }
GLCanvasBitmapPolygonProgram >> form: anObject [

	self uniform: formLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapPolygonProgram >> formDirection: anObject [

	self uniform: formDirectionLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapPolygonProgram >> formNormal: anObject [

	self uniform: formNormalLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapPolygonProgram >> formOrigin: anObject [

	self uniform: formOriginLocation value: anObject
]

{ #category : #generated }
GLCanvasBitmapPolygonProgram >> initializeLocations [

	super initializeLocations.
	
	mvpLocation := self registerUniform: 'mvp'.
	formLocation := self registerUniform: 'form'.
	formOriginLocation := self registerUniform: 'formOrigin'.
	formDirectionLocation := self registerUniform: 'formDirection'.
	formNormalLocation := self registerUniform: 'formNormal'.
	
	aPosLocation := self registerAttribute: 'aPos'.
]

{ #category : #generated }
GLCanvasBitmapPolygonProgram >> mvp: anObject [

	self uniform: mvpLocation value: anObject
]

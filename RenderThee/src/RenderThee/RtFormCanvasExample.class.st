Class {
	#name : #RtFormCanvasExample,
	#superclass : #RtMorphExample,
	#instVars : [
		'canvas',
		'texture',
		'program',
		'vao',
		'vbo'
	],
	#category : #'RenderThee-Examples'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/11/2021 16:07'
}
RtFormCanvasExample >> canvas [

	^ canvas
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/11/2021 16:07'
}
RtFormCanvasExample >> canvas: anObject [

	canvas := anObject.
]

{
	#category : #'texture transfer',
	#'squeak_changestamp' : 'stlu 8/11/2021 16:30'
}
RtFormCanvasExample >> fragmentShaderSource [

	^ '#version 330 core
out vec4 oColor;
in vec2 vTexCoords;
uniform sampler2D sForm;

void main() {
	oColor = texture(sForm, vTexCoords);
}'
]

{
	#category : #rendering,
	#'squeak_changestamp' : 'stlu 5/17/2022 11:33'
}
RtFormCanvasExample >> render [

	self updateMorph.

	world extent = canvas extent
		ifTrue: [canvas reset]
		ifFalse: [canvas := FormCanvas extent: world extent depth: 32].
	self drawPictureOn: canvas.
	
	self transferForm: canvas form.
]

{
	#category : #rendering,
	#'squeak_changestamp' : 'stlu 11/8/2021 15:59'
}
RtFormCanvasExample >> setUp [

	canvas := FormCanvas extent: world extent depth: 32.
	
	program := GLProgram
		vertexSource: self vertexShaderSource
		fragmentSource: self fragmentShaderSource.
	
	vbo := GLBuffer create.
	vbo usage: GL_STATIC_DRAW data: self vertices.
	
	vao := GLVertexArray create.
	vao boundDuring: [
		(vao vertexBufferBindingAt: 0) buffer: vbo stride: 4 * 4.
		(vao vertexAttributeAt: program inputs aPos location)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 4 offset: 0;
			associateVertexBufferBindingAt: 0].
]

{
	#category : #'texture transfer',
	#'squeak_changestamp' : 'stlu 9/10/2021 13:10'
}
RtFormCanvasExample >> transferForm: aForm [

	| texture |
	texture := GLTexture2D create
		bindAt: 0;
		minificationFilter: GL_LINEAR;
		magnificationFilter: GL_LINEAR;
		imageForm: aForm;
		yourself.
	
	GL clearColor: (Color r: 0.2 g: 0.3 b: 0.3).
	GL clear: GL_COLOR_BUFFER_BIT.
	
	program useDuring: [
		vao drawArrays: GL_TRIANGLES numVertices: 6].
	
	texture delete.
]

{
	#category : #'texture transfer',
	#'squeak_changestamp' : 'stlu 8/11/2021 16:32'
}
RtFormCanvasExample >> vertexShaderSource [

	^ '#version 330 core
layout (location = 0) in vec4 aPos;
out vec2 vTexCoords;

void main() {
	gl_Position = vec4(aPos.xy, 0.0, 1.0);
	vTexCoords = aPos.zw;
}'
]

{
	#category : #'texture transfer',
	#'squeak_changestamp' : 'stlu 8/11/2021 16:43'
}
RtFormCanvasExample >> vertices [

	"Note: texture coordinates are vertically flipped"
	^ #(	"positions"	"texture coords"
			1.0 1.0		1.0 0.0 "top right"
			1.0 -1.0	1.0 1.0 "bottom right"
			-1.0 -1.0	0.0 1.0 "bottom left"
			
			1.0 1.0		1.0 0.0 "top right"
			-1.0 -1.0	0.0 1.0 "bottom left"
			-1.0 1.0	0.0 0.0 "top left"
		) asFloat32Array
]

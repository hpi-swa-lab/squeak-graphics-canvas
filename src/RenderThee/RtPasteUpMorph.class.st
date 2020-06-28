Class {
	#name : #RtPasteUpMorph,
	#superclass : #PasteUpMorph,
	#instVars : [
		'vao',
		'vbo',
		'ogl',
		'program'
	],
	#category : 'RenderThee-Project'
}

{ #category : #'world state' }
RtPasteUpMorph >> beWorldForProject: aProject [

	self privateOwner: nil.
	worldState := RtWorldState new.
	self addHand: HandMorph new.
	self setProperty: #automaticPhraseExpansion toValue: true.
	self setProperty: #optimumExtentFromAuthor toValue: Display extent.
	self startSteppingSubmorphsOf: self
]

{ #category : #accessing }
RtPasteUpMorph >> fragmentShader [

	^ '#version 460 core
out vec4 FragColor;

in vec2 TexCoords;

layout (location = 1) uniform sampler2D image;

void main() {
     FragColor = vec4(texture(image, TexCoords).rgb, 1.0);
}
' withUnixLineEndings
]

{ #category : #'initialize-release' }
RtPasteUpMorph >> initOpenGL [

	self log: 'initOpenGL'.
	ogl := GL4_6 newIn: self bounds.
	ogl ifNil: [^ false].
	self log: 'created ogl'.
	program := GLProgram newFor: ogl shaders: {
					VertexShader code: self vertexShader.
					FragmentShader code: self fragmentShader}.
	ogl errorString ifNotNil: [:str | self log: str].
	program ifNil: [^ false].
	self log: 'created program'.
	vao := GLVertexArrayObject newFor: ogl.
	vao ifNil: [^ false].
	self log: 'created vao'.
	vbo := GLBuffer newFor: ogl.
	vbo ifNil: [^ false].
	self log: 'created vbo'.
	vao bind: ogl.
	self log: 'bind vao'.
	vbo
		data: {
			-1. -1. 0 . 0 .
			1.  -1. 0 . 1 .
			-1. 1. 1 . 0	.
			1.   1. 1 . 1
		} asFloatArray
		usage: ogl GL_STATIC_DRAW
		componentsPerVertex: 4.
	self log: 'uploaded data'.
	ogl glDisable: ogl GL_CULL_FACE.
	self log: 'disabled cull face'.
	^ true
]

{ #category : #'change reporting' }
RtPasteUpMorph >> invalidRect: damageRect from: aMorph [

	self isWorldMorph ifTrue: [
		worldState recordDamagedRect: damageRect from: aMorph].
	^super invalidRect: damageRect from: aMorph
]

{ #category : #accessing }
RtPasteUpMorph >> ogl [

	^ ogl
]

{ #category : #accessing }
RtPasteUpMorph >> program [

	^ program
]

{ #category : #'initialize-release' }
RtPasteUpMorph >> releaseOpenGL [

	ogl ifNotNil: [ogl destroy]
]

{ #category : #accessing }
RtPasteUpMorph >> vao [

	^ vao
]

{ #category : #accessing }
RtPasteUpMorph >> vbo [

	^ vbo
]

{ #category : #accessing }
RtPasteUpMorph >> vertexShader [

	^ '#version 460 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoords;

out vec2 TexCoords;

void main()
{
    TexCoords = aTexCoords;
    gl_Position = vec4(aPos, 1.0);
}
' withUnixLineEndings
]

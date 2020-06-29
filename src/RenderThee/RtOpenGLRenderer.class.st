Class {
	#name : #RtOpenGLRenderer,
	#superclass : #Object,
	#instVars : [
		'ogl',
		'program',
		'vbo',
		'vao',
		'mvpUniform',
		'currentFramebuffer',
		'currentExtent'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-Core'
}

{ #category : #accessing }
RtOpenGLRenderer >> currentExtent [
	^ currentExtent
]

{ #category : #accessing }
RtOpenGLRenderer >> currentExtent: anObject [
	currentExtent := anObject
]

{ #category : #accessing }
RtOpenGLRenderer >> currentFramebuffer [
	^ currentFramebuffer
]

{ #category : #accessing }
RtOpenGLRenderer >> currentFramebuffer: anObject [
	currentFramebuffer := anObject
]

{ #category : #shaders }
RtOpenGLRenderer >> fragmentShader [
	^'#version 330 core
out vec4 FragColor;

in vec2 TexCoords;

uniform sampler2D image;

void main() {
	/*if (any(lessThan(TexCoords.xy, vec2(0.01, 0.01))) ||
	    any(greaterThan(TexCoords.xy, vec2(0.99, 0.99))))
		FragColor = vec4(1.0, 0.0, 0.0, 1.0);
	else*/

     //FragColor = vec4(TexCoords.xy, 0.0, 0.3);
     FragColor = texture(image, TexCoords);
}' withUnixLineEndings

]

{ #category : #initialization }
RtOpenGLRenderer >> initialize [
	super initialize.
	
	RtRecordingCanvas record: ActiveWorld.
	
	ogl := GL3_3 newInGLFW: ActiveWorld bounds.
	
	self currentExtent: ActiveWorld extent.
	
	
	ogl makeCurrentDuring: [
		self initializeProgram.
		self initializeBuffers.
		ogl glDisable: GL_CULL_FACE.
		ogl glDisable: GL_DEPTH_TEST.
		ogl glActiveTexture: GL_TEXTURE0.
		ogl
			glClearColor: 1.0
			with: 0.0
			with: 1.0
			with: 1.0.
		ogl glEnable: GL_BLEND.
		ogl glBlendFunc: GL_SRC_ALPHA with: GL_ONE_MINUS_SRC_ALPHA.
		
		
		program use.
		ogl checkForError.
		
		vao bind: ogl.
		ogl checkForError.
		
		ogl glBindBuffer: GL_ARRAY_BUFFER with: vbo id.
		ogl checkForError.
		
		program vertexAttib: 0 value: vbo stride: 4 offset: 0.
		ogl checkForError.
		
		program vertexAttib: 1 value: vbo stride: 4 offset: 2.
		ogl checkForError.

		program
			uniform: (ogl glGetUniformLocation: program id with: 'image')
			value: 0.
		
		ogl checkForError ]
]

{ #category : #initialization }
RtOpenGLRenderer >> initializeBuffers [
		vao := GLVertexArrayObject newFor: ogl.
		vao bind: ogl.
		vbo := GLBuffer new.
		vbo
			data: {
				0. 0. 0. 0 .
				1. 0. 1. 0.
				0. 1. 0. 1.
				1. 1. 1. 1.
			} asFloat32Array
			usage: GL_STATIC_DRAW
			componentsPerVertex: 4.
	
		ogl checkForError.
]

{ #category : #initialization }
RtOpenGLRenderer >> initializeProgram [
	program := GLProgram
						newFor: ogl
						shaders: {
							VertexShader code: self vertexShader.
							FragmentShader code: self fragmentShader }.
	ogl checkForError.
		
	mvpUniform := ogl glGetUniformLocation: program id with: 'mvp'.
]

{ #category : #initialization }
RtOpenGLRenderer >> release [

	ogl ~= #glSuspended ifTrue: [ogl destroy].
	super release
]

{ #category : #rendering }
RtOpenGLRenderer >> renderFrame [
	ogl makeCurrentDuring: [
		ogl beginFrame.
		
		ActiveWorld updateLayerTree.

		ogl glClear: GL_COLOR_BUFFER_BIT.
		ogl checkForError.
		
		
		
		ogl glViewport: 0 with: 0 with: ActiveWorld width with: ActiveWorld height.
		

		
		ogl glActiveTexture: GL_TEXTURE0.
		
		self renderLayer: ActiveWorld groupLayer flipVertical: true.
		
		ogl checkForError.
		"--- end the end frame operations"
		ogl endFrame.
		ogl swapBuffers.
		ogl checkForError ]
	
]

{ #category : #rendering }
RtOpenGLRenderer >> renderLayer: aLayer [
	self renderLayer: aLayer flipVertical: false


]

{ #category : #rendering }
RtOpenGLRenderer >> renderLayer: aLayer flipVertical: aBoolean [
	| visitor |
	visitor := RtOpenGLVisitor new: self.
	visitor rootMatrix: (Matrix4x4 ortho: (aBoolean ifTrue: [0 @ aLayer extent y corner: aLayer extent x @ 0] ifFalse: [0 @ 0 corner: aLayer extent]) near: 0 far: 1)
		;
			drawCallback: [:transform :texture |
				program
					uniform: mvpUniform
					value: transform.
				texture bind.
				vbo draw: GL_TRIANGLE_STRIP].
			
	aLayer children do: [ :child | child visit: visitor ].

]

{ #category : #accessing }
RtOpenGLRenderer >> shouldClose [
	^ ogl shouldClose
]

{ #category : #shaders }
RtOpenGLRenderer >> vertexShader [
	^'#version 330 core
layout (location = 0) in vec2 aPos;
layout (location = 1) in vec2 aTexCoords;

uniform mat4 mvp;
out vec2 TexCoords;

void main()
{
    TexCoords = aTexCoords;
    gl_Position = mvp * vec4(aPos, 0.0, 1.0);
}' withUnixLineEndings
]

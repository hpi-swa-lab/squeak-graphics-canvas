Class {
	#name : #RtOpenGLRenderer,
	#superclass : #Object,
	#instVars : [
		'ogl',
		'vbo',
		'vao',
		'mvpUniform',
		'currentFramebuffer',
		'currentExtent',
		'textureProgram',
		'outlineProgram',
		'colorUniform'
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

{ #category : #rendering }
RtOpenGLRenderer >> drawOutline: transformMatrix color: aColor [
	| color |

	outlineProgram use.
	outlineProgram
		uniform: mvpUniform
		value: transformMatrix.
		
	color := FloatArray withAll: aColor rgbTriplet.
	outlineProgram
		uniform: colorUniform
		value:  color.
		vbo draw: GL_TRIANGLE_STRIP
	
	
]

{ #category : #initialization }
RtOpenGLRenderer >> initialize [
	super initialize.
	
	ActiveWorld morphsToRedraw: nil.
	RtRecordingCanvas record: ActiveWorld.
	
	ogl := GL3_3 newInGLFW: ActiveWorld bounds.
	
	self currentExtent: ActiveWorld extent.
	
	
	ogl makeCurrentDuring: [
		self initializePrograms.
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
		
		
		textureProgram use.
		ogl checkForError.
		
		vao bind.
		ogl checkForError.
		
		ogl glBindBuffer: GL_ARRAY_BUFFER with: vbo id.
		ogl checkForError.
		
		textureProgram vertexAttib: 0 value: vbo stride: 4 offset: 0.
		ogl checkForError.
		
		textureProgram vertexAttib: 1 value: vbo stride: 4 offset: 2.
		ogl checkForError.
		
		outlineProgram vertexAttib: 0 value: vbo stride: 4 offset: 0.
		ogl checkForError.
		
		outlineProgram vertexAttib: 1 value: vbo stride: 4 offset: 2.
		ogl checkForError.


		textureProgram
			uniform: (ogl glGetUniformLocation: textureProgram id with: 'image')
			value: 0.
		
		ogl checkForError ]
]

{ #category : #initialization }
RtOpenGLRenderer >> initializeBuffers [

	vao := GLVertexArrayObject context: ogl.
	vao bind.
	vbo := GLVertexBufferObject context: ogl.
	vbo
		data: {
			0. 0. 0. 0 .
			1. 0. 1. 0.
			0. 1. 0. 1.
			1. 1. 1. 1.
		} asFloat32Array
		usage: GL_STATIC_DRAW
		componentsPerVertex: 4.

	ogl checkForError
]

{ #category : #initialization }
RtOpenGLRenderer >> initializePrograms [
	textureProgram := RtTextureProgram cookWith: ogl.
	outlineProgram := RtOutlineProgram cookWith: ogl.			 
		
	mvpUniform := ogl glGetUniformLocation: textureProgram id with: 'mvp'.
	colorUniform := ogl glGetUniformLocation: outlineProgram id with: 'color'
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
		
		self renderLayer: ActiveWorld groupLayer flipVertical: true outlineColor: Color blue.
		
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
	self flag: #todo. "formatting & scoped bind possible ?"
	visitor := RtOpenGLVisitor new: self.
	visitor rootMatrix: (Matrix4x4 ortho: (aBoolean ifTrue: [0 @ aLayer extent y corner: aLayer extent x @ 0] ifFalse: [0 @ 0 corner: aLayer extent]) near: 0 far: 1)
		;
			drawCallback: [:transform :texture |
				textureProgram use.
				textureProgram
					uniform: mvpUniform
					value: transform.
				texture bind.
				vbo draw: GL_TRIANGLE_STRIP].
			
	aLayer children do: [ :child | child visit: visitor ].


]

{ #category : #rendering }
RtOpenGLRenderer >> renderLayer: aLayer flipVertical: aBoolean outlineColor: aColor [
	| visitor |
	self flag: #todo. "formatting & scoped bind possible ?"
	visitor := RtOpenGLVisitor new: self.
	visitor rootMatrix: (Matrix4x4 ortho: (aBoolean ifTrue: [0 @ aLayer extent y corner: aLayer extent x @ 0] ifFalse: [0 @ 0 corner: aLayer extent]) near: 0 far: 1)
		;
			drawCallback: [:transform :texture :isDrawLayer |
				textureProgram use.
				textureProgram
					uniform: mvpUniform
					value: transform.
				texture bind.
				vbo draw: GL_TRIANGLE_STRIP.
				
				self drawOutline: transform color: (isDrawLayer ifTrue: [Color green] ifFalse: [aColor])].
			
	aLayer children do: [ :child | child visit: visitor ].


]

{ #category : #accessing }
RtOpenGLRenderer >> shouldClose [
	^ ogl shouldClose
]

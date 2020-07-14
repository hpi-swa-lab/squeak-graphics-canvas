Class {
	#name : #RtOpenGLRenderer,
	#superclass : #Object,
	#instVars : [
		'ogl'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-Core'
}

{ #category : #initialization }
RtOpenGLRenderer >> initialize [
	super initialize.
	
	ActiveWorld morphsToRedraw: nil.
	ActiveWorld allMorphsDo: [:m |
		m groupLayer: nil].
	RtRecordingCanvas record: ActiveWorld.
	
	ogl := GL3_3 newGLFWIn: ActiveWorld bounds.
	
	ogl makeCurrentDuring: [
		ogl glDisable: GL_CULL_FACE.
		ogl glDisable: GL_DEPTH_TEST.
		ogl glActiveTexture: GL_TEXTURE0.
		ogl
			glClearColor: 1
			with: 1
			with: 1
			with: 0.
		ogl glEnable: GL_BLEND.
		ogl glBlendFuncSeparate: GL_SRC_ALPHA with: GL_ONE_MINUS_SRC_ALPHA with: GL_ONE with: GL_ONE]
]

{ #category : #initialization }
RtOpenGLRenderer >> release [

	ogl ~= #glSuspended ifTrue: [ogl destroy].
	super release
]

{ #category : #rendering }
RtOpenGLRenderer >> renderFrame [
	| canvas visitor framebuffer |
	ogl newFrameDo: [
		ActiveWorld updateLayerTree.

		ogl glClear: GL_COLOR_BUFFER_BIT.
		ogl checkForError.
		
		ogl glViewport: 0 with: 0 with: ActiveWorld width with: ActiveWorld height.
		
		ogl glActiveTexture: GL_TEXTURE0.

		framebuffer := ogl createObject: GLDisplayFrameBuffer.
		canvas := GLCanvas extent: ActiveWorld extent framebuffer: framebuffer.
		visitor := RtOpenGLVisitor canvas: canvas.
		ActiveWorld groupLayer visit: visitor.
		
		ogl checkForError. ]
	
]

{ #category : #accessing }
RtOpenGLRenderer >> shouldClose [
	^ ogl shouldClose
]

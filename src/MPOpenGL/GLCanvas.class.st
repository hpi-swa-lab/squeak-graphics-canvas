Class {
	#name : #GLCanvas,
	#superclass : #Canvas,
	#instVars : [
		'extent',
		'framebuffer',
		'texture',
		'programs'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'MPOpenGL-Canvas'
}

{ #category : #'instance creation' }
GLCanvas class >> extent: aPoint programs: canvasPrograms [

	^ self new
		extent: aPoint;
		programs: canvasPrograms;
		createFramebuffer;
		yourself
]

{ #category : #'instance creation' }
GLCanvas class >> extent: aPoint programs: canvasPrograms framebuffer: glFrameBuffer [

	^ self new
		extent: aPoint;
		programs: canvasPrograms;
		framebuffer: glFrameBuffer;
		yourself
]

{ #category : #initialization }
GLCanvas >> createFramebuffer [

	| ogl |
	ogl := GL value.
	
	framebuffer := GLFrameBuffer context: ogl.
	texture := GLTexture context: ogl.
	texture extent: extent.
	framebuffer texture2D: texture.
		
	framebuffer boundDuring: [
		ogl
			glViewport: 0 with: 0 with: extent x with: extent y;
			glClearColor: 1 with: 1 with: 1 with: 0;
			glClear: GL_COLOR_BUFFER_BIT]
]

{ #category : #'drawing-images' }
GLCanvas >> drawTexture: glTexture transform: aMatrix [

	self textureProgram
		use;
		mvp: aMatrix.
	texture bind.
	self vbo draw: GL_TRIANGLE_STRIP
]

{ #category : #accessing }
GLCanvas >> extent [

	^ extent
]

{ #category : #accessing }
GLCanvas >> extent: anObject [

	extent := anObject.
]

{ #category : #accessing }
GLCanvas >> framebuffer [

	^ framebuffer
]

{ #category : #accessing }
GLCanvas >> framebuffer: anObject [

	framebuffer := anObject.
]

{ #category : #'drawing-images' }
GLCanvas >> paintImage: aForm at: aPoint sourceRect: sourceRect [

	
]

{ #category : #accessing }
GLCanvas >> programs [

	^ programs
]

{ #category : #accessing }
GLCanvas >> programs: anObject [

	programs := anObject.
]

Class {
	#name : #GLCanvas,
	#superclass : #Canvas,
	#instVars : [
		'extent',
		'framebuffer',
		'programs',
		'baseTransform'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'MPOpenGL-Canvas'
}

{ #category : #'instance creation' }
GLCanvas class >> extent: aPoint programs: canvasPrograms framebuffer: glFrameBuffer [

	^ self new
		extent: aPoint;
		programs: canvasPrograms;
		framebuffer: glFrameBuffer;
		yourself
]

{ #category : #'drawing-textures' }
GLCanvas >> createTexture: aForm [

	^ GLTexture new
		image: aForm;
		yourself
]

{ #category : #'drawing-textures' }
GLCanvas >> drawTexture: glTexture transform: aMatrix [

	self textureProgram
		use;
		mvp: baseTransform * aMatrix.
	glTexture bind.
	self vbo draw: GL_TRIANGLE_STRIP
]

{ #category : #accessing }
GLCanvas >> extent [

	^ extent
]

{ #category : #accessing }
GLCanvas >> extent: aPoint [

	extent := aPoint.
	baseTransform := Matrix4x4 ortho: (0 @ 0 corner: aPoint) near: 0 far: 1
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
GLCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	| form tex transform ogl |
	ogl := GL value.
	form := (sourceRect origin isZero and: [sourceRect extent = aForm extent])
				ifTrue: [aForm]
				ifFalse: [aForm contentsOfArea: sourceRect].
	tex := self createTexture: form.
	transform := Matrix4x4 withOffset: aPoint.
	self flag: #todo. "currently ignores rules / correct blending"
	self drawTexture: tex transform: transform.
	tex delete
]

{ #category : #accessing }
GLCanvas >> outlineProgram [

	^ programs outlineProgram
]

{ #category : #accessing }
GLCanvas >> programs [

	^ programs
]

{ #category : #accessing }
GLCanvas >> programs: anObject [

	programs := anObject.
]

{ #category : #accessing }
GLCanvas >> textureProgram [

	^ programs textureProgram
]

{ #category : #accessing }
GLCanvas >> vao [

	^ programs vao
]

{ #category : #accessing }
GLCanvas >> vbo [

	^ programs vbo
]

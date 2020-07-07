Class {
	#name : #RtOpenGLVisitor,
	#superclass : #RtLayerTreeVisitor,
	#instVars : [
		'matrix',
		'drawCallback',
		'renderer'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'instance creation' }
RtOpenGLVisitor class >> new [
	self shouldNotImplement
]

{ #category : #'instance creation' }
RtOpenGLVisitor class >> new: aRenderer [
	^ (self basicNew) initialize: aRenderer
]

{ #category : #accessing }
RtOpenGLVisitor >> drawCallback: aBlock [

	drawCallback := aBlock
]

{ #category : #initialization }
RtOpenGLVisitor >> initialize: aRenderer [

	renderer := aRenderer
]

{ #category : #helpers }
RtOpenGLVisitor >> layer: aLayer during: aBlock [

	self matrix: matrix * aLayer transform during: aBlock
]

{ #category : #helpers }
RtOpenGLVisitor >> matrix: aMatrix during: aBlock [

	| previousMatrix |
	previousMatrix := matrix.
	matrix := aMatrix.
	aBlock value.
	matrix := previousMatrix
]

{ #category : #accessing }
RtOpenGLVisitor >> rootMatrix: aMatrix [

	matrix := aMatrix
]

{ #category : #texturization }
RtOpenGLVisitor >> texturizeDrawLayer: aLayer [

	^ (GLTexture context: GL value)
		texImage: aLayer rasterizeForm;
		yourself
]

{ #category : #texturization }
RtOpenGLVisitor >> texturizeGroupLayer: aLayer [

	^ aLayer restoreFramebufferOf: renderer after: [ | texture framebuffer ogl |
		ogl := GL value.
		
		framebuffer := GLFrameBuffer context: ogl.
		texture := GLTexture context: ogl.
		texture texImageExtent: aLayer extent.
		framebuffer texture2D: texture.
		
		renderer currentFramebuffer: framebuffer.
		renderer currentExtent: aLayer extent.
		
		framebuffer boundDuring: [
			ogl
				glViewport: 0 with: 0 with: aLayer extent x with: aLayer extent y;
				glClearColor: 1 with: 1 with: 1 with: 0;
				glClear: GL_COLOR_BUFFER_BIT.
			renderer renderLayer: aLayer flipVertical: false outlineColor: false].
		
		framebuffer delete.
		texture]
]

{ #category : #visiting }
RtOpenGLVisitor >> visitDrawLayer: aLayer [

	self layer: aLayer during: [
		| texture |
		texture := aLayer cache ifNil: [
			aLayer incrementDrawCounter.
			aLayer cache: (self texturizeDrawLayer: aLayer)].
		
		drawCallback
			value: matrix * (Matrix4x4 withScale: aLayer extent @ 1)
			value: texture
			value: true]
]

{ #category : #visiting }
RtOpenGLVisitor >> visitGroupLayer: aLayer [

	self layer: aLayer during: [
		aLayer isRasterized
			ifTrue: [
				| texture |
				texture := aLayer cache ifNil: [
					aLayer incrementDrawCounter.
					aLayer cache: (self texturizeGroupLayer: aLayer)].
				drawCallback
					value: matrix * (Matrix4x4 withScale: aLayer extent @ 1)
					value: texture
					value: false]
			ifFalse: [
				aLayer incrementDrawCounter.
				aLayer children do: [:child | child visit: self]]]
]

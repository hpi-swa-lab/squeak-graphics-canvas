Class {
	#name : #RtOpenGLVisitor,
	#superclass : #RtLayerTreeVisitor,
	#instVars : [
		'matrix',
		'canvas'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-LayerTree'
}

{ #category : #'instance creation' }
RtOpenGLVisitor class >> canvas: aCanvas [

	^ self basicNew
		initializeWithCanvas: aCanvas;
		yourself
]

{ #category : #'instance creation' }
RtOpenGLVisitor class >> new [
	self shouldNotImplement
]

{ #category : #texturization }
RtOpenGLVisitor >> compositeDrawLayer: aLayer [

	^ (RtFramebufferStore extent: aLayer extent)
		texture image: aLayer rasterizeForm;
		yourself
]

{ #category : #texturization }
RtOpenGLVisitor >> compositeGroupLayer: aLayer [

	^ aLayer restoreFramebufferOf: renderer after: [ | texture framebuffer ogl elapsedTime |
		elapsedTime := Time microsecondsToRun: [
			ogl := GL value.
		
			framebuffer := GLFrameBuffer context: ogl.
			texture := GLTexture context: ogl.
			texture extent: aLayer extent.
			framebuffer texture2D: texture.
			
			renderer currentFramebuffer: framebuffer.
			renderer currentExtent: aLayer extent.
			
			framebuffer boundDuring: [
				ogl
					glViewport: 0 with: 0 with: aLayer extent x with: aLayer extent y;
					glClearColor: 1 with: 1 with: 1 with: 0;
					glClear: GL_COLOR_BUFFER_BIT.
				renderer renderLayer: aLayer flipVertical: false outlineColor: true].
			
			framebuffer delete].
		aLayer compositeTime: elapsedTime.
		texture]
]

{ #category : #initialization }
RtOpenGLVisitor >> initializeWithCanvas: aCanvas [

	canvas := aCanvas
]

{ #category : #helpers }
RtOpenGLVisitor >> layer: aLayer during: aBlock [

	| elapsedTime |
	elapsedTime := Time microsecondsToRun: [self matrix: matrix * aLayer transform during: aBlock].
	aLayer drawTime: elapsedTime
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

{ #category : #visiting }
RtOpenGLVisitor >> visitDrawLayer: aLayer [

	self layer: aLayer during: [
		| store |
		store := aLayer isComposited ifFalse: [
			aLayer incrementDrawCounter.
			aLayer cache: (self compositeDrawLayer: aLayer)].
		
		canvas transformBy: aLayer transform clippingTo: aLayer clipRect during: [:c |
			c
				paintImageStore: store
				transform: Matrix4x4 identity
				sourceRect: store extent]]
]

{ #category : #visiting }
RtOpenGLVisitor >> visitGroupLayer: aLayer [

	| drawCallback |
	self layer: aLayer during: [
		aLayer shouldBeComposited
			ifTrue: [
				| texture |
				texture := aLayer isComposited ifFalse: [
					aLayer incrementDrawCounter.
					self compositeGroupLayer: aLayer].
				drawCallback
					value: matrix * (Matrix4x4 withScale: aLayer extent @ 1)
					value: texture
					value: aLayer]
			ifFalse: [
				aLayer incrementDrawCounter.
				aLayer children do: [:child | child visit: self]]]
]

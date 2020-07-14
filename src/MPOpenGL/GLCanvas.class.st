Class {
	#name : #GLCanvas,
	#superclass : #Canvas,
	#instVars : [
		'extent',
		'framebuffer',
		'programs',
		'transform',
		'baseTransform',
		'clipRect'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'MPOpenGL-Canvas'
}

{ #category : #'instance creation' }
GLCanvas class >> extent: aPoint framebuffer: glFrameBuffer [

	^ self new
		initializeWithExtent: aPoint framebuffer: glFrameBuffer;
		yourself
]

{ #category : #binding }
GLCanvas >> boundDuring: aBlock [

	framebuffer boundDuring: aBlock
]

{ #category : #'drawing-support' }
GLCanvas >> clipBy: aRectangle during: aBlock [

	self flag: #todo. "transform rectangle?? seems excessive"
	self clipRect: aRectangle during: aBlock
]

{ #category : #'drawing-support' }
GLCanvas >> clipRect: aRectangle during: aBlock [

	| previousClipRect |
	previousClipRect := clipRect.
	clipRect := aRectangle.
	aBlock cull: self.
	clipRect := previousClipRect
]

{ #category : #accessing }
GLCanvas >> drawDrawLayer: aLayer [
	| store |
	aLayer cache ifNil: [
		aLayer cache: (RtFramebufferStore form: aLayer rasterizeForm)].
	store := aLayer cache.
	self paintImageStore: store transform: transform sourceRect: store boundingBox
]

{ #category : #accessing }
GLCanvas >> drawGroupLayer: aLayer [

	aLayer cache
		ifNil: [aLayer children do: [:layer |
			self transformBy: transform clippingTo: (0 @ 0 extent: self extent) during: [:c | self drawLayer: layer]]]
		ifNotNil: [:store | self
			paintImageStore: store
			transform: transform
			sourceRect: store boundingBox]
]

{ #category : #accessing }
GLCanvas >> extent [

	^ extent
]

{ #category : #accessing }
GLCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	self boundDuring: [
		self textureProgram boundDuring: [
			self textureProgram
				sourcePosition: 0 @ 0;
				sourceExtent: 1 @ 1;
				color: fillColor;
				mvp: transform * (Matrix4x4 withOffset: r origin) * (Matrix4x4 withScale: r extent @ 1).
			self vbo draw: GL_TRIANGLE_STRIP]]
]

{ #category : #accessing }
GLCanvas >> framebuffer [

	^ framebuffer
]

{ #category : #initialization }
GLCanvas >> initializeWithExtent: aPoint framebuffer: aFrameBuffer [

	extent := aPoint.
	transform := Matrix4x4 ortho: (0 @ 0 corner: extent) near: 0 far: 1.
	framebuffer := aFrameBuffer.
	programs := GLCanvasPrograms create
]

{ #category : #accessing }
GLCanvas >> outlineProgram [

	^ programs outlineProgram
]

{ #category : #'drawing-images' }
GLCanvas >> paintImageStore: aStore transform: aMatrix sourceRect: sourceRect [

	self boundDuring: [
		self textureProgram boundDuring: [
			aStore glTextureDo: [:texture |
				texture boundDuring: [
					
					aStore framebuffer ifNil: [self haltOnce].
					self textureProgram
						sourcePosition: sourceRect origin / aStore extent asFloatPoint;
						sourceExtent: sourceRect extent / aStore extent asFloatPoint;
						mvp: transform * aMatrix * (Matrix4x4 withScale: aStore extent @ 1).
					self vbo draw: GL_TRIANGLE_STRIP]]]]
]

{ #category : #accessing }
GLCanvas >> programs [

	^ programs
]

{ #category : #accessing }
GLCanvas >> textureProgram [

	^ programs textureProgram
]

{ #category : #accessing }
GLCanvas >> transform [
	^ transform
]

{ #category : #'drawing-support' }
GLCanvas >> transform: aMatrix during: aBlock [

	| previousTransform |
	previousTransform := transform.
	transform := aMatrix.
	aBlock cull: self.
	transform := previousTransform
]

{ #category : #'drawing-support' }
GLCanvas >> transformBy: aMatrix clippingTo: aRectangle during: aBlock smoothing: cellSize [

	self clipBy: aRectangle during: [
		self transformBy: aMatrix during: aBlock]
]

{ #category : #'drawing-support' }
GLCanvas >> transformBy: aMatrix during: aBlock [

	self transform: transform * aMatrix during: aBlock
]

{ #category : #'drawing-support' }
GLCanvas >> translateBy: aPoint clippingTo: aRectangle during: aBlock [

	self clipBy: aRectangle during: [
		self translateBy: aPoint during: aBlock]
]

{ #category : #'drawing-support' }
GLCanvas >> translateBy: aPoint during: aBlock [

	self
		transformBy: (Matrix4x4 withOffset: aPoint)
		during: aBlock
]

{ #category : #accessing }
GLCanvas >> vao [

	^ programs vao
]

{ #category : #accessing }
GLCanvas >> vbo [

	^ programs vbo
]

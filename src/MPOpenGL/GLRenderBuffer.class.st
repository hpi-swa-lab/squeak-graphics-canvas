"
A GLRenderBuffer is a Squeak Object Representation of OpenGl Renderbuffer Objects.

Renderbuffer Objects are OpenGL Objects that contain images. They are created and used specifically with Framebuffer Objects. They are optimized for use as render targets, while Textures may not be, and are the logical choice when you do not need to sample (i.e. in a post-pass shader) from the produced image. If you need to resample (such as when reading depth back in a second shader pass), use Textures instead. Renderbuffer objects also natively accommodate Multisampling (MSAA).

https://www.khronos.org/opengl/wiki/Renderbuffer_Object
https://www.khronos.org/registry/OpenGL-Refpages/es3.0/html/glRenderbufferStorage.xhtml

Instance Variables
	internalFormat: specifies the internal format to be used for the renderbuffer object's storage and must be a color-renderable, depth-renderable, or stencil-renderable format
	samples: 		is the number of samples in the buffer. It must be less than GL_MAX_SAMPLES
	width: 			width in pixels
	height: 			height in pixels

"
Class {
	#name : #GLRenderBuffer,
	#superclass : #AbstractGLBuffer,
	#instVars : [
		'height',
		'width',
		'internalFormat',
		'samples',
		'isStorageAllocated'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'MPOpenGL-Core'
}

{ #category : #storage }
GLRenderBuffer >> allocateStorage [
	"renderbuffers are empty at initialization. Before you can bind them to
	a Framebuffer Object, you must allocate storage for the renderbuffer"
	self bind.
	isStorageAllocated
		ifTrue: ["calling this function on a renderbuffer that has already had
			this function called on it will cause it to deallocate any
			resources associated with the previous call and allocate new
			storage "
			self error: 'Renderbuffer asked to allocate storage twice']
		ifFalse: [gl
				glRenderbufferStorageMultisample: GL_RENDERBUFFER
				with: samples
				with: internalFormat
				with: width
				with: height].
		self unbind.
]

{ #category : #binding }
GLRenderBuffer >> attachTo: aFrameBuffer [
	aFrameBuffer attachRenderBuffer: self attachment: GL_COLOR_ATTACHMENT0
]

{ #category : #binding }
GLRenderBuffer >> attachTo: aFrameBuffer attachment: attachment [
	aFrameBuffer attachRenderBuffer: self attachment: attachment
]

{ #category : #binding }
GLRenderBuffer >> bind [
	"bind a renderbuffer to a renderbuffer target"
	gl glBindRenderbuffer: GL_RENDERBUFFER with: id
]

{ #category : #'initialize-release' }
GLRenderBuffer >> create [
	"generate renderbuffer object name (id)"
	| ids |
	ids := IntegerArray new: 1.
	gl glGenRenderbuffers: 1 with: ids.
	id := ids first.
	

]

{ #category : #destruction }
GLRenderBuffer >> delete [
	"delete renderbuffer object"
	gl glDeleteRenderbuffers: 1 with: (IntegerArray with: id).
]

{ #category : #accessing }
GLRenderBuffer >> dimensions: dimensions [
	"provide some nice2have methods to generate Renderbuffers
	with Rectangles and Points"
	(dimensions isKindOf: Rectangle) ifTrue: [
		width := dimensions corner x - dimensions origin x.
		height := dimensions corner y - dimensions origin y.
		^self].
	(dimensions isKindOf: Point) ifTrue: [
		width := dimensions x.
		height := dimensions y.
		^self].
	self error: 'Invalid dimensions provided'.
]

{ #category : #accessing }
GLRenderBuffer >> height [
	^ height
]

{ #category : #accessing }
GLRenderBuffer >> height: anObject [
	height := anObject
]

{ #category : #'initialize-release' }
GLRenderBuffer >> initialize [
	super initialize.
	height := 0.
	width := 0.
	samples := 0.
	isStorageAllocated := false.
	internalFormat := GL_RGBA8.

]

{ #category : #accessing }
GLRenderBuffer >> internalFormat [
	^ internalFormat
]

{ #category : #accessing }
GLRenderBuffer >> internalFormat: anObject [
	internalFormat := anObject
]

{ #category : #storage }
GLRenderBuffer >> isMultisampleRenderBuffer [
	^samples > 0
]

{ #category : #accessing }
GLRenderBuffer >> isStorageAllocated [
	^ isStorageAllocated
]

{ #category : #accessing }
GLRenderBuffer >> samples [
	^ samples
]

{ #category : #accessing }
GLRenderBuffer >> samples: anObject [
	samples := anObject
]

{ #category : #binding }
GLRenderBuffer >> unbind [
	"bind no renderbuffer to a renderbuffer target"
	gl glBindRenderbuffer: GL_RENDERBUFFER with: 0
]

{ #category : #accessing }
GLRenderBuffer >> width [
	^ width
]

{ #category : #accessing }
GLRenderBuffer >> width: anObject [
	width := anObject
]

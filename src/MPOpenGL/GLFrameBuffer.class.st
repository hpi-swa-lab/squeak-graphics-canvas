"
A GLFrameBuffer is a Squeak representation of OpenGL Framebuffer Objects.

Framebuffer Objects are OpenGL Objects, which allow for the creation of user-defined Framebuffers. With them, one can render to non-Default Framebuffer locations, and thus render without disturbing the main screen. 

https://www.khronos.org/opengl/wiki/Framebuffer_Object

Instance Variables
	target: 		target must be either GL_DRAW_FRAMEBUFFER, GL_READ_FRAMEBUFFER or GL_FRAMEBUFFER.
			If a framebuffer object is bound to GL_DRAW_FRAMEBUFFER or GL_READ_FRAMEBUFFER, it becomes the target for rendering or readback operations, respectively, until it is deleted or another framebuffer is bound to the corresponding bind point.
			Calling glBindFramebuffer with target​ set to GL_FRAMEBUFFER binds framebuffer to both the read and draw framebuffer targets. framebuffer​ is the name of a framebuffer object previously returned from a call to glGenFramebuffers, or zero to break the existing binding of a framebuffer object to target. 

"
Class {
	#name : #GLFrameBuffer,
	#superclass : #AbstractGLBuffer,
	#instVars : [
		'target'
	],
	#pools : [
		'GLConstants'
	],
	#category : 'MPOpenGL-Core'
}

{ #category : #binding }
GLFrameBuffer >> asForm [

	| viewport data |
	viewport := IntegerArray new: 4.
	GL value glGetIntegerv: GL_VIEWPORT with: viewport.
	data := ByteArray new: viewport third * (viewport fourth * 4).
	
	self boundDuring: [
		GL value
			glReadPixels: 0
			with: 0
			with: viewport third
			with: viewport fourth
			with: GL_BGRA
			with: GL_UNSIGNED_INT_8_8_8_8
			with: data].
	
	^ Form
		extent: viewport third @ viewport fourth
		depth: 32
		bits: ((Bitmap new: viewport third * viewport fourth * 4)
			copyFromByteArray: data;
			yourself)
]

{ #category : #binding }
GLFrameBuffer >> attachRenderBuffer: aRenderBuffer [
	self attachRenderBuffer: aRenderBuffer attachment: GL_COLOR_ATTACHMENT0
]

{ #category : #binding }
GLFrameBuffer >> attachRenderBuffer: aRenderBuffer attachment: attachment [ 
	"attach a renderbuffer as a logical buffer of a framebuffer object"
	| renderBuffer |
	renderBuffer := aRenderBuffer isNumber ifTrue: [aRenderBuffer] ifFalse: [aRenderBuffer id].
	
	self boundDuring: [
		"Since GL 4.5, one can bind renderbuffers by referencing"
		(gl isKindOf: GL4_5)
			ifTrue: [
				gl glNamedFramebufferRenderbuffer
					with: id
					with: attachment
					with: GL_RENDERBUFFER
					with: renderBuffer]
			ifFalse: [
				gl glFramebufferRenderbuffer: GL_FRAMEBUFFER
					with: attachment
					with: GL_RENDERBUFFER
					with: renderBuffer].
		self checkComplete]
]

{ #category : #binding }
GLFrameBuffer >> bind [
	"bind a framebuffer to a framebuffer target"
	gl glBindFramebuffer: target with: id.
	gl checkForError.


]

{ #category : #usage }
GLFrameBuffer >> bindToTarget: target [
	self target: target.
	self bind.
]

{ #category : #usage }
GLFrameBuffer >> checkComplete [
	self assert: ((gl glCheckFramebufferStatus: GL_FRAMEBUFFER) = GL_FRAMEBUFFER_COMPLETE)
]

{ #category : #'initialize-release' }
GLFrameBuffer >> create [
	"generate framebuffer object name (id)"
	| ids |
	ids := IntegerArray new: 1.
	gl glGenFramebuffers: 1 with: ids.
	id := ids first.
]

{ #category : #destruction }
GLFrameBuffer >> delete [
	"delete framebuffer object"
	gl glDeleteFramebuffers: 1 with: (IntegerArray with: id).
]

{ #category : #'initialize-release' }
GLFrameBuffer >> initialize [ 
	super initialize.
	target := GL_FRAMEBUFFER
]

{ #category : #reference }
GLFrameBuffer >> renderBufferClass [ 
	^GLRenderBuffer
]

{ #category : #accessing }
GLFrameBuffer >> target [
	^ target
]

{ #category : #accessing }
GLFrameBuffer >> target: anObject [
	target := anObject
]

{ #category : #usage }
GLFrameBuffer >> texture2D: aTexture [
	self texture2D: aTexture attachment: GL_COLOR_ATTACHMENT0
]

{ #category : #usage }
GLFrameBuffer >> texture2D: aTexture attachment: anAttachment [
	self bind.
	gl glFramebufferTexture2D: GL_FRAMEBUFFER
		with: anAttachment
		with: GL_TEXTURE_2D
		with: aTexture id
		with: 0.
	gl checkForError.
	self unbind.
]

{ #category : #binding }
GLFrameBuffer >> unbind [
	"bind no framebuffer to a framebuffer target"
	gl glBindFramebuffer: target with: 0.
	gl checkForError.

]

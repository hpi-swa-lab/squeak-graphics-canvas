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
	#superclass : #GLObject,
	#instVars : [
		'colorAttachment0'
	],
	#category : #'OpenGL-Wrappers-Framebuffers'
}

{ #category : #allocation }
GLFrameBuffer class >> allocate [

	IntegerArray new: 1 during: [:ids |
		GL genFramebuffers: 1 with: ids.
		^ ids first]
]

{ #category : #binding }
GLFrameBuffer class >> bind: id to: target [

	GL bindFramebuffer: target with: id
]

{ #category : #binding }
GLFrameBuffer class >> currentDrawBinding [

	^ GL getIntegerParameter: GL_DRAW_FRAMEBUFFER_BINDING
]

{ #category : #binding }
GLFrameBuffer class >> currentReadBinding [

	^ GL getIntegerParameter: GL_READ_FRAMEBUFFER_BINDING
]

{ #category : #converting }
GLFrameBuffer >> asFormOfExtent: aPoint [

	| data |
	data := ByteArray new: aPoint area * 4.
	
	self boundDuring: [
		GL
			readPixels: 0
			with: 0
			with: aPoint x
			with: aPoint y
			with: GL_BGRA
			with: GL_UNSIGNED_INT_8_8_8_8
			with: data].
	
	^ Form
		extent: aPoint
		depth: 32
		bits: ((Bitmap new: aPoint area * 4)
				copyFromByteArray: data;
				yourself)
]

{ #category : #binding }
GLFrameBuffer >> bind [
	"binds to both read and draw"
	self class bind: id to: GL_FRAMEBUFFER
]

{ #category : #binding }
GLFrameBuffer >> bindToDraw [

	self class bind: id to: GL_DRAW_FRAMEBUFFER
]

{ #category : #binding }
GLFrameBuffer >> bindToRead [

	self class bind: id to: GL_READ_FRAMEBUFFER
]

{ #category : #binding }
GLFrameBuffer >> boundDuring: aBlock [

	| previousRead previousDraw |
	self flag: #todo. "Remember actual objects"
	previousRead := self class currentReadBinding.
	previousDraw := self class currentDrawBinding.
	previousRead = previousDraw = id ifTrue: [^ aBlock value].
	self class bind: id to: GL_FRAMEBUFFER.
	aBlock ensure: [
		previousRead = previousDraw
			ifTrue: [
				self class bind: previousDraw to: GL_FRAMEBUFFER]
			ifFalse: [
				self class bind: previousDraw to: GL_DRAW_FRAMEBUFFER.
				self class bind: previousRead to: GL_READ_FRAMEBUFFER]]
]

{ #category : #binding }
GLFrameBuffer >> boundToDrawDuring: aBlock [

	| previousID |
	self flag: #todo. "Remember actual objects"
	previousID := self class currentDrawBinding.
	previousID = id ifTrue: [^ aBlock value].
	self class bind: id to: GL_DRAW_FRAMEBUFFER.
	aBlock ensure: [
		self class bind: previousID to: GL_DRAW_FRAMEBUFFER]
]

{ #category : #binding }
GLFrameBuffer >> boundToReadDuring: aBlock [

	| previousID |
	self flag: #todo. "Remember actual objects"
	previousID := self class currentReadBinding.
	previousID = id ifTrue: [^ aBlock value].
	self class bind: id to: GL_READ_FRAMEBUFFER.
	aBlock ensure: [
		self class bind: previousID to: GL_READ_FRAMEBUFFER]
]

{ #category : #accessing }
GLFrameBuffer >> colorAttachment0 [

	^ colorAttachment0
]

{ #category : #'initialize-release' }
GLFrameBuffer >> delete [
	
	GL deleteFramebuffers: 1 with: (IntegerArray with: id).
]

{ #category : #testing }
GLFrameBuffer >> isFrameBuffer [

	^ true
]

{ #category : #attachments }
GLFrameBuffer >> texture2D: aTexture [

	self texture2D: aTexture attachment: GL_COLOR_ATTACHMENT0
]

{ #category : #attachments }
GLFrameBuffer >> texture2D: aTexture attachment: anAttachment [
	
	self boundDuring: [
		anAttachment = GL_COLOR_ATTACHMENT0 ifTrue: [
			colorAttachment0 := aTexture ].
		GL framebufferTexture2D: GL_FRAMEBUFFER
			with: anAttachment
			with: GL_TEXTURE_2D
			with: aTexture id
			with: 0.
		GL checkForError]
]

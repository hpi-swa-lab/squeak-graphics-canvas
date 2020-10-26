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
	#superclass : #GLBuffer,
	#instVars : [
		'target',
		'colorAttachment0'
	],
	#category : #'OpenGL-Buffers'
}

{ #category : #binding }
GLFrameBuffer >> asFormOfExtent: aPoint [

	| data |
	data := ByteArray new: aPoint area * 4.
	
	self boundDuring: [
		GL
			glReadPixels: 0
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
GLFrameBuffer >> bind: anID [

	GL glBindFramebuffer: target with: anID
]

{ #category : #binding }
GLFrameBuffer >> bindingEnum [
	
	self flag: #todo. "There is also GL_READ_FRAMEBUFFER_BINDING which we ignore completely"
	^ GL_DRAW_FRAMEBUFFER_BINDING
]

{ #category : #usage }
GLFrameBuffer >> checkComplete [

	self assert: ((GL glCheckFramebufferStatus: GL_FRAMEBUFFER) = GL_FRAMEBUFFER_COMPLETE)
]

{ #category : #accessing }
GLFrameBuffer >> colorAttachment0 [

	^ colorAttachment0
]

{ #category : #'initialize-release' }
GLFrameBuffer >> delete [
	
	GL glDeleteFramebuffers: 1 with: (IntegerArray with: id).
]

{ #category : #'initialize-release' }
GLFrameBuffer >> initialize [

	| ids |
	super initialize.
	target := GL_FRAMEBUFFER.
	ids := IntegerArray new: 1.
	GL glGenFramebuffers: 1 with: ids.
	id := ids first
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
	
	self boundDuring: [
		anAttachment = GL_COLOR_ATTACHMENT0 ifTrue: [
			colorAttachment0 := aTexture ].
		GL glFramebufferTexture2D: GL_FRAMEBUFFER
			with: anAttachment
			with: GL_TEXTURE_2D
			with: aTexture id
			with: 0.
		GL checkForError]
]

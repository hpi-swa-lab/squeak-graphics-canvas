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
		'target',
		'colorAttachment0'
	],
	#category : #'OpenGL-Wrappers-Framebuffers',
	#commentStamp : 'stlu 11/13/2020 18:20'
}

{
	#category : #allocation,
	#timestamp : 'stlu 11/30/2020 19:49'
}
GLFrameBuffer class >> allocate: n in: anIntegerArray [

	GL genFramebuffers: n with: anIntegerArray
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 17:44'
}
GLFrameBuffer class >> bindID: anInteger to: target [

	GL bindFramebuffer: target with: anInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/3/2020 14:54'
}
GLFrameBuffer class >> defaultTarget [

	^ GL_FRAMEBUFFER
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/3/2020 19:28'
}
GLFrameBuffer class >> display [

	^ GLDisplayFrameBuffer create
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 19:29'
}
GLFrameBuffer class >> unbind: target [

	self display bindTo: target
]

{
	#category : #converting,
	#timestamp : 'stlu 11/3/2020 15:35'
}
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

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 18:21'
}
GLFrameBuffer >> bindTo: targetEnum [

	target = GL_FRAMEBUFFER
		ifTrue: [	self bindToReadAndDraw]
		ifFalse: [super bindTo: targetEnum]
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 19:18'
}
GLFrameBuffer >> bindToReadAndDraw [

	self class bindID: id to: GL_FRAMEBUFFER.
	GL
		rememberBinding: GL_DRAW_FRAMEBUFFER as: self;
		rememberBinding: GL_READ_FRAMEBUFFER as: self
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 18:19'
}
GLFrameBuffer >> boundTo: targetEnum during: aBlock [

	^ targetEnum = GL_FRAMEBUFFER
		ifTrue: [self boundToReadAndDrawDuring: aBlock]
		ifFalse: [super boundTo: targetEnum during: aBlock]
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 16:22'
}
GLFrameBuffer >> boundToReadAndDrawDuring: aBlock [

	| previousRead previousDraw |
	previousRead := self class boundTo: GL_READ_FRAMEBUFFER.
	previousDraw := self class boundTo: GL_DRAW_FRAMEBUFFER.
	previousRead = previousDraw = self ifTrue: [^ aBlock value].
	self bindTo: GL_FRAMEBUFFER.
	^ aBlock ensure: [
		previousRead = previousDraw
			ifTrue: [
				previousRead bindTo: GL_FRAMEBUFFER]
			ifFalse: [
				previousRead bindTo: GL_READ_FRAMEBUFFER.
				previousDraw bindTo: GL_DRAW_FRAMEBUFFER]]
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/26/2020 12:27'
}
GLFrameBuffer >> colorAttachment0 [

	^ colorAttachment0
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 11/3/2020 15:35'
}
GLFrameBuffer >> delete [
	
	GL deleteFramebuffers: 1 with: (IntegerArray with: id).
]

{
	#category : #'initialize-release',
	#timestamp : 'stlu 12/3/2020 16:13'
}
GLFrameBuffer >> initialize [

	super initialize.
	target := self class defaultTarget
]

{
	#category : #testing,
	#timestamp : 'stlu 10/29/2020 12:16'
}
GLFrameBuffer >> isFrameBuffer [

	^ true
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/3/2020 14:55'
}
GLFrameBuffer >> target [

	^ target
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/3/2020 14:55'
}
GLFrameBuffer >> target: anObject [

	target := anObject
]

{
	#category : #attachments,
	#timestamp : 'stlu 10/26/2020 12:26'
}
GLFrameBuffer >> texture2D: aTexture [

	self texture2D: aTexture attachment: GL_COLOR_ATTACHMENT0
]

{
	#category : #attachments,
	#timestamp : 'stlu 11/3/2020 15:36'
}
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

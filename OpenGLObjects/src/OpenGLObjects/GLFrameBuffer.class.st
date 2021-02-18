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
	#classVars : [
		'CompletionStatusDescriptions'
	],
	#category : #'OpenGLObjects-Framebuffers',
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
	#category : #'class initialization',
	#timestamp : 'stlu 1/9/2021 13:46'
}
GLFrameBuffer class >> initialize [

	CompletionStatusDescriptions := {
		GL_FRAMEBUFFER_UNDEFINED -> 'Undefined framebuffer. The specified framebuffer is the default read or draw framebuffer, but the default framebuffer does not exist.'.
		GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT -> 'Incomplete attachment. One of the framebuffer attachment points are framebuffer incomplete.'.
		GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT -> 'Incomplete missing attachment. The framebuffer does not have at least one image attached to it.'.
		GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER -> 'Incomplete draw buffer. The value of GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE is GL_NONE for any color attachment point(s) named by GL_DRAW_BUFFERi.'.
		GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER -> 'Incomplete read buffer. GL_READ_BUFFER is not GL_NONE and the value of GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE is GL_NONE for the color attachment point named by GL_READ_BUFFER.'.
		GL_FRAMEBUFFER_UNSUPPORTED -> 'Unsupported framebuffer. The combination of internal formats of the attached images violates an implementation-dependent set of restrictions.'.
		GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE -> 'Incomplete multisample. Either the value of GL_RENDERBUFFER_SAMPLES is not the same for all attached renderbuffers; or the value of GL_TEXTURE_SAMPLES is the not same for all attached textures; or, if the attached images are a mix of renderbuffers and textures, the value of GL_RENDERBUFFER_SAMPLES does not match the value of GL_TEXTURE_SAMPLES; or if the value of GL_TEXTURE_FIXED_SAMPLE_LOCATIONS is not the same for all attached textures; or, if the attached images are a mix of renderbuffers and textures, the value of GL_TEXTURE_FIXED_SAMPLE_LOCATIONS is not GL_TRUE for all attached textures.'.
		GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS -> 'Incomplete layer targets. One of the framebuffer attachment is layered, and one of the populated attachments is not layered, or all populated color attachments are not from textures of the same target.'.
	} as: Dictionary
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
	#category : #attachments,
	#timestamp : 'stlu 1/9/2021 14:05'
}
GLFrameBuffer >> attach2DTexture: a2DTexture level: mipMapLevel to: attachmentEnum [

	self stateAccessImp
		framebuffer: self
		attach2DTexture: a2DTexture
		level: mipMapLevel
		to: attachmentEnum
]

{
	#category : #attachments,
	#timestamp : 'stlu 1/9/2021 14:05'
}
GLFrameBuffer >> attach2DTexture: a2DTexture to: attachmentEnum [

	self stateAccessImp
		framebuffer: self
		attach2DTexture: a2DTexture
		level: 0
		to: attachmentEnum
]

{
	#category : #attachments,
	#timestamp : 'stlu 1/9/2021 13:58'
}
GLFrameBuffer >> attachRenderbuffer: aRenderbuffer to: attachmentEnum [

	self stateAccessImp
		framebuffer: self
		attachRenderbuffer: aRenderbuffer
		to: attachmentEnum
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
	#category : #blitting,
	#timestamp : 'stlu 1/9/2021 14:31'
}
GLFrameBuffer >> blit: bufferMask into: otherFramebuffer from: readBounds to: drawBounds [

	self
		blit: bufferMask
		into: otherFramebuffer
		from: readBounds
		to: drawBounds
		filter: GL_NEAREST
]

{
	#category : #blitting,
	#timestamp : 'stlu 1/9/2021 14:31'
}
GLFrameBuffer >> blit: bufferMask into: otherFramebuffer from: readBounds to: drawBounds filter: filterEnum [

	self stateAccessImp
		blit: bufferMask
		from: self
		bounds: readBounds
		to: otherFramebuffer
		bounds: drawBounds
		filter: filterEnum
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
	#timestamp : 'stlu 1/9/2021 12:36'
}
GLFrameBuffer >> boundToReadAndDrawDuring: aBlock [

	| previousRead previousDraw |
	previousRead := self class boundTo: GL_READ_FRAMEBUFFER.
	previousDraw := self class boundTo: GL_DRAW_FRAMEBUFFER.
	(self = previousRead and: [self = previousDraw]) ifTrue: [^ aBlock value].
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
	#category : #completion,
	#timestamp : 'stlu 1/9/2021 13:29'
}
GLFrameBuffer >> checkCompletion [

	self checkCompletion: target
]

{
	#category : #completion,
	#timestamp : 'stlu 1/9/2021 13:47'
}
GLFrameBuffer >> checkCompletion: target [

	| status |
	status := self completionStatus: target.
	status ~= GL_FRAMEBUFFER_COMPLETE ifTrue: [
		self error: (CompletionStatusDescriptions at: status)]
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/26/2020 12:27'
}
GLFrameBuffer >> colorAttachment0 [

	^ colorAttachment0
]

{
	#category : #completion,
	#timestamp : 'stlu 1/9/2021 13:29'
}
GLFrameBuffer >> completionStatus [

	^ self completionStatus: target
]

{
	#category : #completion,
	#timestamp : 'stlu 1/9/2021 13:56'
}
GLFrameBuffer >> completionStatus: targetEnum [

	^ self stateAccessImp
		framebuffer: self
		completionStatus: targetEnum
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
	#timestamp : 'stlu 12/14/2020 12:12'
}
GLFrameBuffer >> isAllocated [

	^ GL isFramebuffer: id
]

{
	#category : #testing,
	#timestamp : 'stlu 10/29/2020 12:16'
}
GLFrameBuffer >> isFrameBuffer [

	^ true
]

{
	#category : #imps,
	#timestamp : 'stlu 1/9/2021 13:56'
}
GLFrameBuffer >> stateAccessImp [

	^ GLFramebufferDirectStateAccessImp new
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

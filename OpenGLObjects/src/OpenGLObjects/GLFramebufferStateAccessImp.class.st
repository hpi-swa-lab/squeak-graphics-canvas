Class {
	#name : #GLFramebufferStateAccessImp,
	#superclass : #GLWrapperImp,
	#category : #'OpenGLObjects-Framebuffers',
	#commentStamp : ''
}

{
	#category : #blitting,
	#timestamp : 'stlu 1/9/2021 14:28'
}
GLFramebufferStateAccessImp >> blit: mask from: readFramebuffer bounds: readBounds to: drawFramebuffer bounds: drawBounds filter: filterEnum [

	self subclassResponsibility
]

{
	#category : #attachments,
	#timestamp : 'stlu 1/9/2021 14:03'
}
GLFramebufferStateAccessImp >> framebuffer: aFramebuffer attach2DTexture: a2DTexture level: mipMapLevel to: attachmentEnum [

	self subclassResponsibility
]

{
	#category : #attachments,
	#timestamp : 'stlu 1/9/2021 13:56'
}
GLFramebufferStateAccessImp >> framebuffer: aFramebuffer attachRenderbuffer: aRenderbuffer to: attachmentEnum [

	self subclassResponsibility
]

{
	#category : #completion,
	#timestamp : 'stlu 1/9/2021 13:56'
}
GLFramebufferStateAccessImp >> framebuffer: aFrameBuffer completionStatus: targetEnum [

	self subclassResponsibility
]

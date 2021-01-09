Class {
	#name : #GLFramebufferDirectStateAccessImp,
	#superclass : #GLFramebufferStateAccessImp,
	#category : #'OpenGL-Wrappers-Framebuffers',
	#commentStamp : ''
}

{
	#category : #blitting,
	#timestamp : 'stlu 1/9/2021 14:27'
}
GLFramebufferDirectStateAccessImp >> blit: mask from: readFramebuffer bounds: readBounds to: drawFramebuffer bounds: drawBounds filter: filterEnum [

	GL
		blitNamedFramebuffer: readFramebuffer id
		with: drawFramebuffer id
		with: readBounds left
		with: readBounds top
		with: readBounds right
		with: readBounds bottom
		with: drawBounds left
		with: drawBounds top
		with: drawBounds right
		with: drawBounds bottom
		with: mask
		with: filterEnum
]

{
	#category : #attachments,
	#timestamp : 'stlu 1/9/2021 14:03'
}
GLFramebufferDirectStateAccessImp >> framebuffer: aFramebuffer attach2DTexture: a2DTexture level: mipMapLevel to: attachmentEnum [

	GL
		namedFramebufferTexture: aFramebuffer id
		with: attachmentEnum
		with: a2DTexture id
		with: mipMapLevel
]

{
	#category : #attachments,
	#timestamp : 'stlu 1/9/2021 13:59'
}
GLFramebufferDirectStateAccessImp >> framebuffer: aFramebuffer attachRenderbuffer: aRenderbuffer to: attachmentEnum [

	GL
		namedFramebufferRenderbuffer: aFramebuffer id
		with: attachmentEnum
		with: aRenderbuffer target
		with: aRenderbuffer id
]

{
	#category : #completion,
	#timestamp : 'stlu 1/9/2021 13:56'
}
GLFramebufferDirectStateAccessImp >> framebuffer: aFrameBuffer completionStatus: targetEnum [

	^ GL
		checkNamedFramebufferStatus: aFrameBuffer id
		with: targetEnum
]

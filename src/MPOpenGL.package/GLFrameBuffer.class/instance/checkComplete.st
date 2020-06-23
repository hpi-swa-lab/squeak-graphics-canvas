usage
checkComplete
	self assert: ((gl glCheckFramebufferStatus: GL_FRAMEBUFFER) = GL_FRAMEBUFFER_COMPLETE)
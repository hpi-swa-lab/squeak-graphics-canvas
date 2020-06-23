usage
texture2D: aTexture attachment: anAttachment
	self bind.
	gl glFramebufferTexture2D: GL_FRAMEBUFFER
		with: anAttachment
		with: GL_TEXTURE_2D
		with: aTexture id
		with: 0.
	gl checkForError.
	self unbind.
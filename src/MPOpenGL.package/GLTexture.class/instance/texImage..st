accessing
texImage: aForm

	self bind.
	
	GL value
		glTexImage2D: GL_TEXTURE_2D
		with: 0
		with: GL_RGBA
		with: aForm width
		with: aForm height
		with: 0
		with: GL_BGRA
		with: GL_UNSIGNED_BYTE
		with: (aForm asFormOfDepth: 32) bits.
	GL value checkForError.
	
	GL value glTexParameteri: GL_TEXTURE_2D
		with: GL_TEXTURE_MIN_FILTER
		with: GL_LINEAR.
	GL value glTexParameteri: GL_TEXTURE_2D
		with: GL_TEXTURE_MAG_FILTER
		with: GL_LINEAR.
	
	self unbind
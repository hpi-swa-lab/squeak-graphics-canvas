initialization
texImage: aForm
	self bind.
	GL value
		glTexImage2D: GL value GL_TEXTURE_2D
		with: 0
		with: GL value GL_RGBA
		with: aForm width
		with: aForm height
		with: 0
		with: GL value GL_BGRA
		with: GL value GL_UNSIGNED_BYTE
		with: (aForm asFormOfDepth: 32) bits.
	GL value checkForError.
	
	 GL value glTexParameteri: GL value GL_TEXTURE_2D
		with: GL value GL_TEXTURE_MIN_FILTER
		with: GL value GL_LINEAR.
  	 GL value glTexParameteri: GL value GL_TEXTURE_2D
		with: GL value GL_TEXTURE_MAG_FILTER
		with: GL value GL_LINEAR.
	
	self unbind.
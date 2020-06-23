binding
bind
	"bind a framebuffer to a framebuffer target"
	gl glBindFramebuffer: target with: id
	gl checkForError.
	self assert: (gl glCheckFramebufferStatus: GL_FRAMEBUFFER = GL_FRAMEBUFFER_COMPLETE)
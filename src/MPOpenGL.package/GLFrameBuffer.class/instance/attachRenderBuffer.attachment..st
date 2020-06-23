binding
attachRenderBuffer: aRenderBuffer attachment: attachment 
	"attach a renderbuffer as a logical buffer of a framebuffer object"
	| renderBuffer |
	renderBuffer := (aRenderBuffer isKindOf: self renderBufferClass)
				ifTrue: [aRenderBuffer id]
				ifFalse: [aRenderBuffer].
	"Since GL 4.5, one can bind renderbuffers by referencing"
	(gl isKindOf: GL4_5)
		ifTrue: [gl glNamedFramebufferRenderbuffer
				with: id
				with: attachment
				with: GL_RENDERBUFFER
				with: renderBuffer.
			self bind.
			self checkComplete.
			self unbind.]
		ifFalse: [
			self bind.
			gl glFramebufferRenderbuffer: GL_FRAMEBUFFER
				with: attachment
				with: GL_RENDERBUFFER
				with: renderBuffer.
			self checkComplete.
			self unbind]
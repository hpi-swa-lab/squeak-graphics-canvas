binding
attachRenderBuffer: aRenderBuffer attachment: attachment 
	"attach a renderbuffer as a logical buffer of a framebuffer object"
	| renderBuffer |
	renderBuffer := aRenderBuffer isNumber ifTrue: [aRenderBuffer] ifFalse: [aRenderBuffer id].
	
	self boundDo: [
		"Since GL 4.5, one can bind renderbuffers by referencing"
		(gl isKindOf: GL4_5)
			ifTrue: [
				gl glNamedFramebufferRenderbuffer
					with: id
					with: attachment
					with: GL_RENDERBUFFER
					with: renderBuffer]
			ifFalse: [
				gl glFramebufferRenderbuffer: GL_FRAMEBUFFER
					with: attachment
					with: GL_RENDERBUFFER
					with: renderBuffer].
		self checkComplete]
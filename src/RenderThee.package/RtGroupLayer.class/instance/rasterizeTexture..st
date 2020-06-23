drawing
rasterizeTexture: aRendender
	| texture framebuffer renderbuffer |
	framebuffer := GLFrameBuffer new.
	texture := GLTexture new.
	texture texImageExtent: self extent.
	framebuffer texture2D: texture.
	renderbuffer := GLRenderBuffer new.
	renderbuffer dimensions: self extent.
	renderbuffer allocateStorage.
	renderbuffer attachTo: framebuffer.
	
	framebuffer bind.
	GL value glClearColor: 1 with: 0 with: 0 with: 0.
	GL value glClear: GLConstants GL_COLOR_BUFFER_BIT.
	GL value glClearColor: 1 with: 1 with: 0 with: 0.
	self children do: [:child | aRendender renderLayer: child].
	framebuffer unbind.
	
	framebuffer delete.
	renderbuffer delete.
	
	^ texture
	
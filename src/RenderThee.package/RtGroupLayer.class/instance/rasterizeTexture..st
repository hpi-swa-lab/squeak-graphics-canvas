drawing
rasterizeTexture: aRendender
	^ self restoreFramebufferOf: aRendender after: [ | texture framebuffer ogl |
		ogl := GL value.
		
		framebuffer := GLFrameBuffer new.
		texture := GLTexture new.
		texture texImageExtent: self extent.
		framebuffer texture2D: texture.
		
		aRendender currentFramebuffer: framebuffer.
		aRendender currentExtent: self extent.
		
		framebuffer boundDo: [
			ogl
				glViewport: 0 with: 0 with: self extent x with: self extent y;
				glClearColor: 0.5 with: 1 with: 1 with: 1;
				glClear: GL_COLOR_BUFFER_BIT.
			aRendender renderLayer: self].
		
		framebuffer delete.
		texture]
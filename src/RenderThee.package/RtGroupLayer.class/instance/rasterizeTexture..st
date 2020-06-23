drawing
rasterizeTexture: aRendender
	| texture framebuffer oldFramebuffer oldExtent |
	oldFramebuffer := aRendender currentFramebuffer.
	oldExtent := aRendender currentExtent.
	
	framebuffer := GLFrameBuffer new.
	texture := GLTexture new.
	texture texImageExtent: self extent.
	framebuffer texture2D: texture.
	
	aRendender currentFramebuffer: framebuffer.
	aRendender currentExtent: self extent.
	
	framebuffer bind.
	GL value glViewport: 0 with: 0 with: self extent x with: self extent y.
	GL value glClearColor: 0.5 with: 1 with: 1 with: 1.
	GL value glClear: GLConstants GL_COLOR_BUFFER_BIT.
	aRendender renderLayer: self.
	framebuffer unbind.
	GL value glViewport: 0 with: 0 with: ActiveWorld extent x with: ActiveWorld extent y.
	
	framebuffer delete.
	"renderbuffer delete."
	
	aRendender currentFramebuffer: oldFramebuffer.
	aRendender currentExtent: oldExtent.
	oldFramebuffer ifNotNil: [ oldFramebuffer bind ].
	
	^ texture
	
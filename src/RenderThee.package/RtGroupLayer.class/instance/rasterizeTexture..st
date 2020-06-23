drawing
rasterizeTexture: aRendender
	| texture framebuffer |
	framebuffer := GLFrameBuffer new.
	texture := GLTexture new.
	framebuffer texture2D: texture.
	texture texImageExtent: self extent.
	self children do: [:child | aRendender renderLayer: child].
	^ texture
	
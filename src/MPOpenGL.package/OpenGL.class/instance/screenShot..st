accessing
screenShot: aRectangle
	"Make a screen shot with the given extent"
	| form |
	form := Form extent: aRectangle extent depth: 32.
	self glReadPixels: aRectangle left with: bufRect height - aRectangle bottom with: aRectangle width with: aRectangle height with: platform imagePixelFormat32 with: platform imagePixelType32 with: form bits.
	form flipVertically.
	^form
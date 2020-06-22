drawing
rasterizeForm

	| fc |
	fc := FormCanvas extent: extent.
	(RtCanvasCompositor canvas: fc) visitContainerLayer: self.
	^ fc form
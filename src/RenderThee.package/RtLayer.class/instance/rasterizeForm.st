visiting
rasterizeForm

	| fc |
	fc := FormCanvas extent: extent.
	self visit: (RtRasterizeVisitor canvas: fc).
	^ fc form
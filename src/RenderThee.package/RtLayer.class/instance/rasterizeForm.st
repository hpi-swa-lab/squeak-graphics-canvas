visiting
rasterizeForm

	| fc |
	fc := RtFormCanvas extent: extent.
	self visit: (RtRasterizeVisitor canvas: fc).
	^ fc form
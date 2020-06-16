drawing
rasterizeForm

	| fc |
	fc := FormCanvas extent: extent.
	super drawOn: fc.
	^ fc form
accessing
canvasForm

	| fc |
	fc := FormCanvas extent: self canvasExtent.
	canvas layer applyOn: fc.
	^ fc form
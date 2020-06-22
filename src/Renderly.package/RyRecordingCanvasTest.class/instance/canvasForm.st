accessing
canvasForm

	| fc |
	fc := FormCanvas extent: self canvasExtent.
	canvas layer drawOn: fc.
	^ fc form
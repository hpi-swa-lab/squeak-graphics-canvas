accessing
canvasForm

	| fc |
	fc := FormCanvas extent: canvas extent.
	canvas rootLayer applyOn: fc.
	^ fc form
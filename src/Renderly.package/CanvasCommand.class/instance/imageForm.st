applying
imageForm

	| canvas form |
	form := Form extent: self element bottomRight depth: 32.
	canvas := form getCanvas.
	self applyOn: canvas.
	^ form copy: self element bounds
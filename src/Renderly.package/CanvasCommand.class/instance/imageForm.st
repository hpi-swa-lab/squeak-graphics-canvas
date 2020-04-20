applying
imageForm

	| canvas form |
	form := Form extent: 1000@1000 depth: 32.
	canvas := form getCanvas.
	self applyOn: canvas.
	^ form
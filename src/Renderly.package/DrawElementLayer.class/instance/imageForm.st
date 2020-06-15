converting
imageForm

	| canvas |
	canvas := FormCanvas extent: self element extent.
	self applyOn: canvas.
	^ canvas form copy: self element bounds
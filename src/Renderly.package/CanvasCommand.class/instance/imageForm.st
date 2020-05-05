applying
imageForm

	| canvas |
	canvas := FormCanvas extent: self element bottomRight.
	self applyOn: canvas.
	^ canvas form copy: self element bounds
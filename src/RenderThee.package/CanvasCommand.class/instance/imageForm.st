applying
imageForm

	| canvas |
	canvas := FormCanvas extent: self clipRect extent.
	self applyOn: canvas.
	^ canvas form copy: self clipRect
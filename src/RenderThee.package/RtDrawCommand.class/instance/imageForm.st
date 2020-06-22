drawing
imageForm

	| canvas |
	canvas := FormCanvas extent: self clipRect extent.
	self drawOn: canvas.
	^ canvas form copy: self clipRect
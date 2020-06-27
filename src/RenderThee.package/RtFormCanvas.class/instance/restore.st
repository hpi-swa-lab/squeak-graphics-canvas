saving / restoring
restore

	| pop |
	pop := saveStack removeLast.
	self setClipRect: pop first.
	self setTransform: pop second
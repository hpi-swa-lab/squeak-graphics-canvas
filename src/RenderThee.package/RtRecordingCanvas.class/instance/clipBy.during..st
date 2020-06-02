drawing-support
clipBy: localClipRect during: aBlock

	localClipRect = self clipRect ifTrue: [^ aBlock value: self].
	self
		newCurrentLayer: (DrawLayer clipRect: localClipRect)
		during: aBlock
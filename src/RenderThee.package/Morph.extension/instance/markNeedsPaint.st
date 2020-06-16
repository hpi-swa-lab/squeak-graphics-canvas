*RenderThee
markNeedsPaint

	self isRepaintBoundary "assumption (for now): own repaint boundary == own texture"
		ifTrue: [
			self paintLayer ifNotNil: [:layer |
				| rc |
				layer clear.
				layer invalidateCache.
				layer setBounds: self bounds.
				rc := RtRecordingCanvas layer: layer.
				rc fullDraw: self]]
		ifFalse: [
			self owner ifNotNil: [:o | o markNeedsPaint]]
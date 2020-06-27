drawing-support
clipBy: localClipRect during: aBlock

	self addCommand: RtSaveCommand new.
	self addCommand: (RtClipCommand clipRect: (localClipRect translateBy: self origin negated)).
	aBlock value: self.
	self addCommand: RtRestoreCommand new
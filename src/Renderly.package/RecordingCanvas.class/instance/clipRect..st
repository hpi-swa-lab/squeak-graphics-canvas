initialization
clipRect: aRectangle

	self rootLayer: (DrawRootLayer
						origin: 0@0
						clipRect: aRectangle).
	self globalOrigin: self rootLayer origin.
	self currentLayer: self rootLayer
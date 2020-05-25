initialization
clipRect: aRectangle

	self rootLayer: (DrawRootLayer
						position: 0@0
						clipRect: aRectangle).
	self globalOrigin: self rootLayer position.
	self globalClipRect: self rootLayer clipRect.
	self currentLayer: self rootLayer
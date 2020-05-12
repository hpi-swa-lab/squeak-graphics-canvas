public
record: anElement

	self rootLayer: (DrawRootLayer origin: 0@0 clipRect: anElement bounds).
	self currentLayer: self rootLayer.
	self fullDrawElement: anElement
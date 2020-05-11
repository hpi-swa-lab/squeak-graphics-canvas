public
record: anElement

	self rootLayer: (DrawElementLayer element: anElement origin: 0@0 clipRect: anElement bounds).
	self currentLayer: self rootLayer.
	self fullDraw: anElement
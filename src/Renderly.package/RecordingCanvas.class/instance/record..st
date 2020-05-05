public
record: anElement

	self currentElement: anElement.
	self flag: #todo. "what would a good initial clipRect be?"
	self rootLayer: (DrawLayer origin: 0@0 clipRect: (-999999 @ -999999 corner: 999999 @ 999999)).
	self currentLayer: self rootLayer.
	self rootLayer element: anElement.
	self fullDraw: anElement
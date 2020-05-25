drawing-general
fullDrawElement: anElement

	self
		newCurrentLayer: (DrawElementLayer
								position: (0@0)
								clipRect: self localClipRect
								element: anElement)
		during: [:canvas | self fullDraw: anElement]
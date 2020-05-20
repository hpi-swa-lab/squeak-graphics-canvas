drawing-general
fullDrawElement: anElement

	self
		newCurrentLayer: (DrawElementLayer element: anElement)
		during: [:canvas | self fullDraw: anElement]
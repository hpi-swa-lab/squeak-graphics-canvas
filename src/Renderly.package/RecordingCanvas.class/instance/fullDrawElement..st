drawing-general
fullDrawElement: anElement

	self
		newCurrentLayer: (DrawElementLayer element: anElement)
		during: [:canvas | canvas fullDraw: anElement]
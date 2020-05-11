drawing-general
fullDrawMorph: aMorph

	self
		newCurrentLayer: (DrawElementLayer element: aMorph)
		during: [:canvas | self fullDraw: aMorph]
visiting
visitDrawLayer: aLayer

	aLayer commands do: [:cmd |
		cmd drawOn: canvas].
	canvas frameRectangle: canvas clipRect color: Color red
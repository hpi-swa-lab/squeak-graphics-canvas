visiting
visitDrawLayer: aLayer

	aLayer commands do: [:cmd |
		cmd drawOn: canvas]
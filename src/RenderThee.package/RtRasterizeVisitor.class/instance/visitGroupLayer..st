visiting
visitGroupLayer: aLayer

	aLayer children do: [:childLayer | self visitChildLayer: childLayer]
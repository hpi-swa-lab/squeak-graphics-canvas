visiting
visitContainerLayer: aLayer

	aLayer layers do: [:layer |
		layer visit: self]
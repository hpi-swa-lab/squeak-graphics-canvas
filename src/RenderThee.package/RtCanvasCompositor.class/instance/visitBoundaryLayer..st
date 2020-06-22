visiting
visitBoundaryLayer: aLayer

	canvas
		translucentImage: aLayer assuredForm
		at: aLayer transform translation asPoint.
	
	canvas
		frameRectangle: aLayer bounds
		color: Color red
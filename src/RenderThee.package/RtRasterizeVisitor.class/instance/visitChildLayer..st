visiting
visitChildLayer: aLayer

	canvas save.
	canvas clipRect: aLayer clipRect.
	canvas concat: aLayer transform.
	
	aLayer visit: self.
	
	canvas restore
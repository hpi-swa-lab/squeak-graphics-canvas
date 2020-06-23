visiting
visitLayer: aLayer

	matrixStack addLast: matrixStack last * aLayer transform.
	
	aLayer isRasterized
		ifTrue: [
			drawCallback value: matrixStack last * (Matrix4x4 withScale: ( aLayer extent x) @ ( aLayer extent y) @ 1) value: (aLayer assuredTexture: renderer)]
		ifFalse: [
			aLayer children do: [:child | child visit: self]].
	
	matrixStack removeLast
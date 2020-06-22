as yet unclassified
visitLayer: aLayer

	matrixStack addLast: matrixStack last * aLayer transform.
	
	aLayer isRasterized
		ifTrue: [
			drawCallback value: matrixStack last value: aLayer assuredForm]
		ifFalse: [
			aLayer children do: [:child | child visit: self]].
	
	matrixStack removeLast
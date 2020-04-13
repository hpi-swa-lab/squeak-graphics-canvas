compositing
endCurrentDrawLayer

	(currentCommand notNil and: [currentCommand notEmpty]) ifTrue: [
		layerStack last append: (DrawLayer new operationsTree: currentCommand)].
	
	transform := MatrixTransform2x3 identity.
	currentCommand := DrawTransform new
		transformBy: MatrixTransform2x3 identity
		clippingTo: (0@0 corner: 10000 @ 10000)
		smoothing: 0
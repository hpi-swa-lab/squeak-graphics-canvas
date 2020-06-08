compositing
endCurrentDrawLayer

	(currentCommand notNil and: [currentCommand notEmpty]) ifTrue: [
		layerStack last append: (RtDrawLayer new operationsTree: currentCommand)].
	
	transform := MatrixTransform2x3 identity.
	currentCommand := RtDrawTransform new
		transformBy: MatrixTransform2x3 identity
		clippingTo: (0@0 corner: 10000 @ 10000)
		smoothing: 0
transformation - scoped
transformBy: aMatrix during: aBlock

	self layerDuring: [
		self concatTransform: aMatrix.
		aBlock value]
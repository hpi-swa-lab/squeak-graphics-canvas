transformation - scoped
translateBy: aPoint during: aBlock

	self layerDuring: [
		self translateBy: aPoint.
		aBlock value]
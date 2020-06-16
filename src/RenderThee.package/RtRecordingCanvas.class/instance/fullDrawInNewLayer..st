drawing-general
fullDrawInNewLayer: aMorph

	self flag: #todo. "fullBounds"
	aMorph setProperty: #boundaryLayer toValue: (self
		newCurrentLayer: (RtDrawBoundaryLayer
							bounds: (aMorph bounds translateBy: self origin negated))
		newOrigin: aMorph position
		during: [:canvas | canvas fullDraw: aMorph])
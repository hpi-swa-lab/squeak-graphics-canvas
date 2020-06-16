drawing-general
fullDrawInNewLayer: aMorph

	self
		newCurrentLayer: (RtBoundaryLayer
							bounds: (aMorph bounds translateBy: self origin negated)) "outerBounds?"
		newOrigin: aMorph position
		during: [:canvas | self fullDrawInCurrentLayer: aMorph]
drawing-general
fullDrawInNewLayer: aMorph

	self
		newCurrentLayer: (RtGroupLayer
							bounds: (aMorph bounds translateBy: self origin negated)) "outerBounds?"
		newOrigin: aMorph position
		during: [:canvas | self fullDrawInCurrentLayer: aMorph]
applying
applyOn: aCanvas

	self isClipping
		ifFalse: [
			aCanvas
				translateBy: self position
				during: [:newCanvas |
					self commands do: [:cmd | cmd applyOn: newCanvas]]]
		ifTrue: [
			aCanvas
				translateBy: self position
				clippingTo: self clipRect
				during: [:clippedCanvas |
					self commands do: [:cmd | cmd applyOn: clippedCanvas]]]
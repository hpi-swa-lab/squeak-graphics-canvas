applying
applyOn: aCanvas

	self isClipping
		ifFalse: [
			aCanvas
				translateBy: self origin
				during: [:newCanvas |
					self commands do: [:cmd | cmd applyOn: newCanvas]]]
		ifTrue: [
			aCanvas
				translateBy: self origin
				clippingTo: self localClipRect
				during: [:clippedCanvas |
					self commands do: [:cmd | cmd applyOn: clippedCanvas]]]
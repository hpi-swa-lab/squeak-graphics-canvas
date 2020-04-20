applying
applyOn: aCanvas

	self isClipping
		ifFalse: [
			aCanvas
				translateBy: self offset
				during: [:clippedCanvas |
					self commands do: [:cmd | cmd applyOn: clippedCanvas]]]
		ifTrue: [
			aCanvas
				translateBy: self offset
				clippingTo: self clipRect
				during: [:clippedCanvas |
					self commands do: [:cmd | cmd applyOn: clippedCanvas]]]
applying
applyOn: aCanvas

	self isClipping
		ifFalse: [
			aCanvas
				translateBy: self offset
				during: [:translatedCanvas |
					self commands do: [:cmd | cmd applyOn: translatedCanvas]]]
		ifTrue: [
			aCanvas
				translateBy: self offset
				clippingTo: self clipRect
				during: [:translatedCanvas |
					self commands do: [:cmd | cmd applyOn: translatedCanvas]]]
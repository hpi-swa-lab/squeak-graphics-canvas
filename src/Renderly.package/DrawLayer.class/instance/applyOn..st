applying
applyOn: aCanvas

	self isClipping
		ifFalse: [
			self commands do: [:cmd | cmd applyOn: aCanvas]]
		ifTrue: [
			aCanvas
				clipBy: self clipRect
				during: [:clippedCanvas |
					self commands do: [:cmd | cmd applyOn: clippedCanvas]]]
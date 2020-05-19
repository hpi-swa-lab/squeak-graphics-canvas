applying
applyOn: aCanvas

	aCanvas
		transformBy: self transform
		clippingTo: super clipRect
		during: [:transformedCanvas |
					self commands do: [:cmd |
						cmd applyOn: transformedCanvas]]
		smoothing: self smoothing
applying
applyOn: aCanvas

	aCanvas
		transformBy: self transform
		clippingTo: self bounds
		during: [:transformedCanvas |
					self commands do: [:cmd |
						cmd applyOn: transformedCanvas]]
		smoothing: self smoothing
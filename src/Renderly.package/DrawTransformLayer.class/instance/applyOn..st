applying
applyOn: aCanvas

	aCanvas
		transformBy: self transform
		clippingTo: self clipRect
		during: [:transformedCanvas | self commands do: [:cmd | cmd applyOn: transformedCanvas]]
		smoothing: self smoothing
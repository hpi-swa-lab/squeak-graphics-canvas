as yet unclassified
drawOn: aCanvas

	aCanvas
		transformBy: transform
		clippingTo: clipRectangle
		during: [:canvas | commands do: [:c | c drawOn: canvas]]
		smoothing: smoothing
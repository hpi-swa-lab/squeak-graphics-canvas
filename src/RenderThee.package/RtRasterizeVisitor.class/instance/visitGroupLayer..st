visiting
visitGroupLayer: aLayer

	canvas
		translateBy: aLayer transform translation asPoint
		clippingTo: aLayer clipRect
		during: [:childCanvas | | previousCanvas |
			previousCanvas := canvas.
			canvas := childCanvas.
			aLayer children do: [:childLayer | childLayer visit: self].
			canvas := previousCanvas.
			childCanvas drawString: aLayer transform translation asString at: 0 @ 0 font: nil color: Color red]
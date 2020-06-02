balloon-svg-support
drawGeneralSegments: segments color: c borderWidth: borderWidth borderColor: borderColor

	| group |
	group := RtDrawShapeGroup new color: c borderWidth: borderWidth borderColor: borderColor.
	currentCommand addCommand: group.
	self currentCommand: group during: [
		segments do: [:segment |
			segment primAddToEngine: self fills: {c. borderColor} lineWidth: borderWidth]]
balloon
drawGeneralBezierShape: contours color: c borderWidth: borderWidth borderColor: borderColor

	| group |
	group := RtDrawShapeGroup new color: c borderWidth: borderWidth borderColor: borderColor.
	currentCommand addCommand: group.
	self currentCommand: group during: [
		contours do: [:contour |
			self drawBezierShape: contour color: c borderWidth: borderWidth borderColor: borderColor]]
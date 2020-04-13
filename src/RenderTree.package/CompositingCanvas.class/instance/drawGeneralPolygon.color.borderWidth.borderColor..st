balloon
drawGeneralPolygon: contours color: c borderWidth: borderWidth borderColor: borderColor

	contours do: [:vertices |
		self drawPolygon: vertices color: c borderWidth: borderWidth borderColor: borderColor]
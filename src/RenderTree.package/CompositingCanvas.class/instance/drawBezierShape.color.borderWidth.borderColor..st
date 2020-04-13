balloon
drawBezierShape: vertices color: c borderWidth: borderWidth borderColor: borderColor

	currentCommand addCommand: (DrawBezierShape new vertices: vertices color: c borderWidth: borderWidth borderColor: borderColor)
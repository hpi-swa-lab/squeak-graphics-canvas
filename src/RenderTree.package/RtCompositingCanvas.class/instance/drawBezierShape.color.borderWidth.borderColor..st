balloon
drawBezierShape: vertices color: c borderWidth: borderWidth borderColor: borderColor

	currentCommand addCommand: (RtDrawBezierShape new vertices: vertices color: c borderWidth: borderWidth borderColor: borderColor)
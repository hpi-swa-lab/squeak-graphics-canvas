balloon
drawOpenPolygon: vertices fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor

	currentCommand addCommand: (DrawPolygon new vertices: vertices color: aFillStyle borderWidth: borderWidth borderColor: borderColor)
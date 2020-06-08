balloon
drawOpenPolygon: vertices fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor

	currentCommand addCommand: (RtDrawPolygon new vertices: vertices color: aFillStyle borderWidth: borderWidth borderColor: borderColor)
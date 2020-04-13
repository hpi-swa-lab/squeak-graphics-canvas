drawing-polygons
drawPolygon: anArray color: aColor borderWidth: anInteger borderColor: anotherColor

	currentCommand addCommand: (DrawPolygon new vertices: anArray color: aColor borderWidth: anInteger borderColor: anotherColor)
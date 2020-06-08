drawing-polygons
drawPolygon: anArray color: aColor borderWidth: anInteger borderColor: anotherColor

	currentCommand addCommand: (RtDrawPolygon new vertices: anArray color: aColor borderWidth: anInteger borderColor: anotherColor)
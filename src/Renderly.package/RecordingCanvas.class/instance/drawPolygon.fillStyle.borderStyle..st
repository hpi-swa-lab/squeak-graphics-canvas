drawing-polygons
drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle

	self commands add: (DrawPolygon vertices: vertices fillStyle: aFillStyle borderStyle: aBorderStyle)
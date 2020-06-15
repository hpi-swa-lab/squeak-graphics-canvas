drawing-polygons
drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle

	self flag: #todo. "coordinates"
	self addCommand: (DrawPolygon
							vertices: vertices
							fillStyle: aFillStyle
							borderStyle: aBorderStyle)
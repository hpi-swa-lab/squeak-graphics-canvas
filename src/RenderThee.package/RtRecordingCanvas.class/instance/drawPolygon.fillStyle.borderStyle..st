drawing-polygons
drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle

	self flag: #todo. "coordinates"
	self addCommand: (RtDrawPolygon
							vertices: vertices
							fillStyle: aFillStyle
							borderStyle: aBorderStyle)
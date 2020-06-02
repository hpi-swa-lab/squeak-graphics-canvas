drawing-polygons
drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc

	self
		drawPolygon: vertices
		fillStyle: (SolidFillStyle color: aColor)
		borderWidth: bw borderColor: bc
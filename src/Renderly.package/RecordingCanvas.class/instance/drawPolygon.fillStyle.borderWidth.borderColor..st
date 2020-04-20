drawing-polygons
drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc

	self
		drawPolygon: vertices
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: bw color: bc)
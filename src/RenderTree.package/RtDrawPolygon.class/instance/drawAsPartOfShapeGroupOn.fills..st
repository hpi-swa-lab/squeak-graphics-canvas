as yet unclassified
drawAsPartOfShapeGroupOn: aCanvas fills: aCollection

	aCanvas ensuredEngine
		primAddPolygon: vertices
		segments: vertices size
		fill: aCollection first
		lineWidth: borderWidth
		lineFill: aCollection second
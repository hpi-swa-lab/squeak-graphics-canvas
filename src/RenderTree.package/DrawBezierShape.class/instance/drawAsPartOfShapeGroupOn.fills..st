as yet unclassified
drawAsPartOfShapeGroupOn: aCanvas fills: aCollection

	aCanvas ensuredEngine
		primAddBezierShape: vertices
		segments: vertices size // 3
		fill: aCollection first
		lineWidth: borderWidth
		lineFill: aCollection second
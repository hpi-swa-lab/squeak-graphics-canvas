drawing
drawOn: aCanvas

	aCanvas translucentImage: self assureForm at: transform translation asPoint.
	aCanvas frameRectangle: self bounds color: Color red.
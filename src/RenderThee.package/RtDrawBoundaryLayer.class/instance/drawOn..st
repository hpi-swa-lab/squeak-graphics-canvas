drawing
drawOn: aCanvas

	aCanvas translucentImage: self assuredForm at: transform translation asPoint.
	aCanvas frameRectangle: self bounds color: Color red.
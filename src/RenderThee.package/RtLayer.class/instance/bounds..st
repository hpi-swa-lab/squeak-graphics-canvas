initialization
bounds: aRectangle

	self transform: (Matrix4x4 withOffset: aRectangle topLeft asVector3).
	self extent: aRectangle extent
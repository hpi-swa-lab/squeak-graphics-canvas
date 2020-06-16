initialization
setBounds: aRectangle

	self setTransform: (Matrix4x4 withOffset: aRectangle topLeft asVector3).
	self setExtent: aRectangle extent
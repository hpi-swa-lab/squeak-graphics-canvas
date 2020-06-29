accessing
clipRect: aRectangle

	self setClipRect: ((aRectangle translateBy: origin) intersect: clipRect)
instance creation
transform: aDisplayTransform clipRect: aRectangle smoothing: cellSize

	^ self new
		transform: aDisplayTransform;
		clipRect: aRectangle;
		smoothing: cellSize;
		yourself
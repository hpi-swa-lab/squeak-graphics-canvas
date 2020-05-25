instance creation
transform: aDisplayTransform bounds: aRectangle smoothing: cellSize

	^ self basicNew
		transform: aDisplayTransform;
		bounds: aRectangle;
		smoothing: cellSize;
		initialize;
		yourself
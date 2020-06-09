instance creation
transform: aMatrix extent: extent

	^ self new
		setTransform: aMatrix;
		setExtent: extent;
		yourself
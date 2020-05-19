instance creation
extent: aPoint

	^ self new
		clipRect: (0@0 extent: aPoint);
		yourself
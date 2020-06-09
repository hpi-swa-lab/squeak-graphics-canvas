instance creation
child: aRenderBox extent: aPoint pixelDensity: aFloat

	^ self new
		setChild: aRenderBox;
		setExtent: aPoint;
		setPixelDensity: aFloat;
		yourself
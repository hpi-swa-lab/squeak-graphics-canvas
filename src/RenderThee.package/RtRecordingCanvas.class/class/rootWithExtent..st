instance creation
rootWithExtent: aPoint

	^ self layer: (RtDrawBoundaryLayer offset: 0@0 extent: aPoint)
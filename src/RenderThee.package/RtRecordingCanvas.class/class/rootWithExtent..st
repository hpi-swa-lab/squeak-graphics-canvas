instance creation
rootWithExtent: aPoint

	^ self layer: (RtBoundaryLayer offset: 0@0 extent: aPoint)
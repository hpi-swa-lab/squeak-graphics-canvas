instance creation
offset: offset extent: extent

	^ self transform: (Matrix4x4 withOffset: offset asVector3) extent: extent
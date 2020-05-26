*MPOpenGL
rotateZByDegree: degree
	^self rows: 4 columns: 4 contents: {
		(degree degreesToRadians cos). (degree degreesToRadians sin negated). 0. 0.
		(degree degreesToRadians sin). (degree degreesToRadians cos). 0. 0.
		0. 0. 1. 0.
		0. 0. 0. 1. } asFloatArray 
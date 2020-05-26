*MPOpenGL
rotateZBy: radians
	^self rows: 4 columns: 4 contents: {
		(radians cos). (radians sin negated). 0. 0.
		(radians sin). (radians cos). 0. 0.
		0. 0. 1. 0.
		0. 0. 0. 1. } asFloatArray 
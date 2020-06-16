*MPOpenGL
scaleX: x y: y z: z
	^ self rows: 4 columns: 4 contents: {
		x. 0. 0. 0.
		0. y. 0. 0.
		0. 0. z. 0.
		0. 0. 0. 1}
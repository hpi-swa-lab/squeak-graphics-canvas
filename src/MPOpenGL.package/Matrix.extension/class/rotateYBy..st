*MPOpenGL
rotateYBy: degrees
	^self rows: 4 columns: 4 contents: {
		(degrees cos). 0. (degrees sin). 0.
		0. 1. 0. 0.
		(0 - degrees sin). 0. (degrees cos). 0.
		0. 0. 0. 1} asFloatArray
	
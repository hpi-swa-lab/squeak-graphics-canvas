*MPOpenGL
rotateXBy: degrees
	^self rows: 4 columns: 4 contents: {
		1. 0. 0. 0.
	  	0. (degrees cos) rounded. (0-degrees sin) rounded. 0.
	  	0. (degrees sin) rounded. (degrees cos) rounded. 0.
	  	0. 0. 0. 1} asFloatArray
	
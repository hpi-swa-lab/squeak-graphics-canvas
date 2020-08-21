*2DTransform
asMatrix2x3

	^ Matrix2x3 identity
		a11: self a11;
		a12: self a12;
		a21: self a21;
		a22: self a22;
		a13: self a14;
		a23: self a24;
		yourself
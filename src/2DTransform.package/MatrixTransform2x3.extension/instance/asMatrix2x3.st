*2DTransform
asMatrix2x3

	| result |
	result := Matrix2x3 basicNew.
	result a11: self a11.
	result a12: self a12.
	result a13: self a13.
	result a21: self a21.
	result a22: self a22.
	result a23: self a23.
	^ result
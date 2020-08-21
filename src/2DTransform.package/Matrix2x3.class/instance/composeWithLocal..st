composing
composeWithLocal: aMatrix2x3
	"Compose the receiver with the local transformation passed in."
	| b11 b12 b13 b21 b22 b23 tmp |
	b11 := aMatrix2x3 a11.
	b12 := aMatrix2x3 a12.
	b13 := aMatrix2x3 a13.
	b21 := aMatrix2x3 a21.
	b22 := aMatrix2x3 a22.
	b23 := aMatrix2x3 a23.
	a13 := a13 + (a11 * b13) + (a12 * b23).
	a23 := a23 + (a21 * b13) + (a22 * b23).
	tmp := a11.
	a11 := (tmp * b11) + (a12 * b21).
	a12 := (tmp * b12) + (a12 * b22).
	tmp := a21.
	a21 := (tmp * b11) + (a22 * b21).
	a22 := (tmp * b12) + (a22 * b22)
	
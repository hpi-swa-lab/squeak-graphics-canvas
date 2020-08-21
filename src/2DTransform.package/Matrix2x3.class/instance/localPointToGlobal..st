transforming points
localPointToGlobal: aPoint
	"Transform aPoint from local coordinates into global coordinates"
	| x y |
	x := aPoint x asFloat.
	y := aPoint y asFloat.
	^ (a13 + (x * a11) + (y * a12))
		@ (a23 + (x * a21) + (y * a22))
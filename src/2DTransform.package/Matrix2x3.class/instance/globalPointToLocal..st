transforming points
globalPointToLocal: aPoint
	"Transform aPoint from global coordinates into local coordinates"
	| x y det |
	det := (a11 * a22) - (a12 * a21).
	det = 0.0 ifTrue: [^ 0.0@0.0]. "So we have at least a valid result"
	x := aPoint x asFloat - a13.
	y := aPoint y asFloat - a23.
	^ (((x * a22) - (a12 * y)) / det)
		@ (((a11 * y) - (x * a21)) / det)
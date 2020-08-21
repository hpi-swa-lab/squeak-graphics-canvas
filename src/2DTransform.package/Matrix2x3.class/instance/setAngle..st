initialization
setAngle: degrees
	"Set the raw rotation angle in the receiver"
	| rad s c |
	rad := degrees degreesToRadians.
	s := rad sin.
	c := rad cos.
	a11 := c. a12 := s negated.
	a21 := s. a22 := c
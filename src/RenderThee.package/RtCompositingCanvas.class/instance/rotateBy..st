transformation
rotateBy: degrees
	"Rotates transform by degrees. Positive degrees rotate clockwise."
	self transformBy: (Matrix rotateZByDegree: degrees)
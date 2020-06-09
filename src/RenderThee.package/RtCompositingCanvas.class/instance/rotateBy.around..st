transformation
rotateBy: degrees around: aPoint
	"Rotates transform by degrees around aPoint. Positive degrees rotate clockwise."
	self translateBy: aPoint negated.
	self rotateBy: degrees
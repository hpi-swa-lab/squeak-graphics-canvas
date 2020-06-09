transformation
scaleBy: aPoint
	"Scales transform by aPoint>>x on the x-axis and aPoint>>y on the y-axis."
	self transformBy: (Matrix scaleX: aPoint x y: aPoint y)
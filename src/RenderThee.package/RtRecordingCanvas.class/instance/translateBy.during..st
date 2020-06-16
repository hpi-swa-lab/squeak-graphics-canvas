drawing-support
translateBy: delta during: aBlock

	"delta isZero ifTrue: [^ aBlock value: self]."
	self
		"newCurrentLayer: (RtDrawBoundaryLayer
							offset: delta
							extent: self layer extent - delta)"
		newOrigin: (self origin + delta)
		during: aBlock
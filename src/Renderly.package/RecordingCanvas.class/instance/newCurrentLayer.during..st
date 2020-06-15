private
newCurrentLayer: aLayer during: aBlock

	| subCanvas |
	self addCommand: aLayer.
	subCanvas := self class
					layer: aLayer
					origin: (aLayer origin translateBy: self origin).
	aBlock value: subCanvas
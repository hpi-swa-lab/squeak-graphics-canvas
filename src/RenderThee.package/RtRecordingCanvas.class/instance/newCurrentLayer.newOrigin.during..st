private
newCurrentLayer: aLayer newOrigin: newOrigin during: aBlock

	| previousLayer previousOrigin |
	previousLayer := self layer.
	previousOrigin := self origin.
	self addLayer: aLayer.
	self layer: aLayer.
	self origin: newOrigin.
	aBlock value: self.
	self endDrawLayer.
	self layer: previousLayer.
	self origin: previousOrigin.
	^ aLayer
private
newCurrentLayer: aLayer newOrigin: newOrigin during: aBlock

	| previousLayer |
	previousLayer := self layer.
	self addLayer: aLayer.
	self layer: aLayer.
	self newOrigin: newOrigin during: aBlock.
	self endDrawLayer.
	self layer: previousLayer.
	^ aLayer
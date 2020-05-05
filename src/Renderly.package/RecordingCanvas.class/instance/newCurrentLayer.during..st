private
newCurrentLayer: aLayer during: aBlock

	| parent |
	self addCommand: aLayer.
	parent := self currentLayer.
	
	self currentLayer: aLayer.
	aBlock value: self.
	self currentLayer: parent "no ensure, since root layer is known"
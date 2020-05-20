private
newCurrentLayer: aLayer during: aBlock

	| parentLayer parentOrigin |
	parentLayer := self currentLayer.
	self addCommand: aLayer.
	
	self currentLayer: aLayer.
	parentOrigin := globalOrigin.
	globalOrigin := aLayer origin translateBy: parentOrigin.
	
	aBlock value: self.
	
	self currentLayer: parentLayer.
	globalOrigin := parentOrigin.
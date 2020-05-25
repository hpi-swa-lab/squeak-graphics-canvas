private
newCurrentLayer: aLayer during: aBlock

	| parent parentOrigin parentClipRect |
	self addCommand: aLayer.
	parent := self currentLayer.
	
	self currentLayer: aLayer.
	parentOrigin := globalOrigin.
	parentClipRect := globalClipRect.
	globalClipRect := aLayer clipRect translateBy: parentOrigin.
	globalOrigin := aLayer position translateBy: parentOrigin.
	
	aBlock value: self.
	
	self currentLayer: parent. "no ensure, since root layer is known"
	globalOrigin := parentOrigin.
	globalClipRect := parentClipRect
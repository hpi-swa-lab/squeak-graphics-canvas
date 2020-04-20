private
beCurrentLayer: aLayer during: aBlock

	| parent |
	self commands add: aLayer.
	parent := self currentLayer.
	
	[self currentLayer: aLayer.
	aBlock value: self] ensure: [
		self currentLayer: parent]
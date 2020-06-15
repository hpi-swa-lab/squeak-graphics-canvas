drawing-support
translateBy: delta during: aBlock

	delta isZero ifTrue: [^ aBlock value: self].
	self
		newCurrentLayer: (DrawLayer origin: delta)
		during: aBlock
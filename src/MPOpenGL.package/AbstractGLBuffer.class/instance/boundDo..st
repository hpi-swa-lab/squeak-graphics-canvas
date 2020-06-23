binding
boundDo: aBlock

	self bind.
	aBlock value.
	self unbind
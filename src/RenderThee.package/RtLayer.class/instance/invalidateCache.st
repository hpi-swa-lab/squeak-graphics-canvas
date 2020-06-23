compositing
invalidateCache

	self parent ifNotNil: [:p | p invalidateCache].
	cache := nil
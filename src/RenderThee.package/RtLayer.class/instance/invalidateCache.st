compositing
invalidateCache

	self parent ifNotNil: [:p | p invalidateCache].
	cachedForm := nil
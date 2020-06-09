accessing
assureForm

	^ cachedForm ifNil: [cachedForm := self rasterizeForm]
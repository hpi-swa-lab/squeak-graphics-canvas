accessing
assuredForm

	^ cachedForm ifNil: [cachedForm := self rasterizeForm]
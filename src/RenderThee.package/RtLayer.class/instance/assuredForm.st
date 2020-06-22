visiting
assuredForm

	^ cachedForm ifNil: [cachedForm := self rasterizeForm]
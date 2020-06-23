visiting
assuredForm

	^ cache ifNil: [cache := self rasterizeForm]
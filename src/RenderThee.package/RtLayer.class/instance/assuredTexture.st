visiting
assuredTexture

	^ cache ifNil: [cache := self rasterizeTexture]
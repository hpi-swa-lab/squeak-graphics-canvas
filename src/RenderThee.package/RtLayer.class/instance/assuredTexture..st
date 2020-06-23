visiting
assuredTexture: aRenderer

	^ cache ifNil: [cache := self rasterizeTexture: aRenderer]
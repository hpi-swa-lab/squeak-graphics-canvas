accessing
assuredTexture

	self needsPaint ifTrue: [self texturize].
	^ cachedTexture
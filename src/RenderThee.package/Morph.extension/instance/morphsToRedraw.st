*RenderThee
morphsToRedraw

	^ (self valueOfProperty: #morphsToRedraw) ifNil: [
		self morphsToRedraw: IdentitySet new]
instance creation
rootWithOrigin: globalOrigin

	^ self
		layer: (DrawLayer origin: globalOrigin)
		origin: globalOrigin
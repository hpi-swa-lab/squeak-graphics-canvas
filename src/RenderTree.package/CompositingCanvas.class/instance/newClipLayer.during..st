compositing
newClipLayer: aRect during: aBlock

	(self new: ClipLayer during: aBlock ref: nil) clipRect: aRect
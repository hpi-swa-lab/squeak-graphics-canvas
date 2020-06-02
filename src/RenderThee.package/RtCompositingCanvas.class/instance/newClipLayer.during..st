compositing
newClipLayer: aRect during: aBlock

	(self new: RtClipLayer during: aBlock ref: nil) clipRect: aRect
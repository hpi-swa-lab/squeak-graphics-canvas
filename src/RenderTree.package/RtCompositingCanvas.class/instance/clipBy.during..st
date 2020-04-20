drawing-support
clipBy: aRectangle during: aBlock

	"| clip |
	clip := DrawTransform new transformBy: MatrixTransform2x3 identity clippingTo: aRectangle smoothing: 0.
	currentCommand addCommand: clip.
	self currentCommand: clip during: [aBlock value: self]"
	
	self newClipLayer: aRectangle during: [aBlock value: self]
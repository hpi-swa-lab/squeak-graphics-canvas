accessing
localClipRect
	"clipping rectangle relative to parent's origin"
	^ self globalClipRect translateBy: self parent globalOrigin negated
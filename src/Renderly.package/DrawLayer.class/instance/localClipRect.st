accessing
localClipRect
	"The clipping rectangle relative to my parent's origin."
	^ self clipRect translateBy: self origin negated
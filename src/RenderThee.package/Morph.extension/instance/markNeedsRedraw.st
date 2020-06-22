*RenderThee
markNeedsRedraw

	"assumption (for now): own repaint boundary == own texture"
	self isRepaintBoundary
		ifTrue: [
			ActiveWorld morphsToRedraw add: self]
		ifFalse: [self owner ifNotNil: [:o | o markNeedsRedraw]]
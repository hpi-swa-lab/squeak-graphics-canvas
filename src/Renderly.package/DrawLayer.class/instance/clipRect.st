accessing
clipRect
	"local clip rect (relative to my own origin)"
	^ clipRect ifNil: [self parent clipRect translateBy: self offset]
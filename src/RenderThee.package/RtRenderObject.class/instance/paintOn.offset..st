painting
paintOn: context offset: offset
	"Paint this render object into the given context at the given offset.
	The render object's local coordinate system is axis-aligned with the coordinate system of
	the context's canvas. The render object's local origin (i.e. x=0 and y=0) is placed at the
	given offset in the context's canvas."
	self subclassResponsibility
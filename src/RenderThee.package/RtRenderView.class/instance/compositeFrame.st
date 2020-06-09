compositing
compositeFrame

	| compositor |
	self notYetImplemented.
	compositor := RtCompositingCanvas new.
	layer drawOn: compositor
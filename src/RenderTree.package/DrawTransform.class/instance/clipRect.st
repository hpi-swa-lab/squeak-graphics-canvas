as yet unclassified
clipRect

	self flag: #fixme. " the clip rect that we save is the one that needs to be passed into the canvas>>*clip* call. afterwards, FormCanvas>>copyOffset:clipRect: takes care of computing the clip rectangle that will actually be in use after the call, which is what we do here "
	^ clipRectangle translateBy: transform offset
accessing
clipRect

	self flag: #todo. "is there a better way?"
	^ self currentLayer clipRect ifNil: [0@0 corner: 10000@10000]
accessing
externalPointer: anExternalAddress

	| type integer |
	self flag: #debugging.
	type := ExternalType uintptr_t.
	integer := type
		handle: anExternalAddress asByteArrayPointer
		at: 1.
		
	self addressFieldPut: integer.
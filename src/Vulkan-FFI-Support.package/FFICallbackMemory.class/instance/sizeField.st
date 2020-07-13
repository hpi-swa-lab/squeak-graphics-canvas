alien compatibility
sizeField "^<Integer>"
	<primitive: 'primSizeField' module: 'IA32ABI' error: errorCode>

	"For some reason, the size is stored as intptr_t, not uintpr_t."
	^ (ExternalData fromHandle: self type: ExternalType intptr_t)
		at: 1
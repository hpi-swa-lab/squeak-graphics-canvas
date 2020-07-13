alien compatibility
sizeFieldPut: size "<Integer> ^<Integer>"
	<primitive: 'primSizeFieldPut' module: 'IA32ABI' error: errorCode>

	self notify: 'Primitive failed. Proceed to use fallback code.'.	

	"For some reason, the size is stored as intptr_t, not uintpr_t."
	^ (ExternalData fromHandle: self type: ExternalType intptr_t)
		at: 1 put: size
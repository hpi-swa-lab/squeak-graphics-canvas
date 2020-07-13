alien compatibility
addressFieldPut: value "<Integer> ^<Integer>"
	<primitive: 'primAddressFieldPut' module: 'IA32ABI' error: errorCode>

	self notify: 'Primitive failed. Proceed to use fallback code.'.	
	^ (ExternalData fromHandle: self type: ExternalType uintptr_t)
		at: ExternalData wordSize + 1
		put: value
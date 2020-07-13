alien compatibility
addressField "^<Integer>"
	<primitive: 'primAddressField' module: 'IA32ABI' error: errorCode>
	
	^ (ExternalData fromHandle: self type: ExternalType uintptr_t)
		at: ExternalData wordSize + 1
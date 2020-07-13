*Vulkan-FFI-Support
fromInteger: anInteger
	"Read the given interger as an address pointing to an external memory area."
	
	| buffer type |
	type := ExternalType uintptr_t.
	buffer := ByteArray new: type byteSize.
	type handle: buffer at: 1 put: anInteger.
	^ buffer asExternalPointer
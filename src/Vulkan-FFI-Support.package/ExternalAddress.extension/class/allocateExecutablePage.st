*Vulkan-FFI-Support
allocateExecutablePage
	"The IA32ABI plugin answers a byte array where the first half encodes the allocated byte size and the second half the external address to that executable memory. Unpack that byte array and return external data we can read and write conveniently."
	
	| alien |
	alien := self primAllocateExecutablePage.	
	^ ExternalData
		fromHandle: alien externalPointer
		byteSize: alien byteSize
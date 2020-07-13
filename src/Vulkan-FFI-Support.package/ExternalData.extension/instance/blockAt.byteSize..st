*Vulkan-FFI-Support
blockAt: byteIndex byteSize: numBytes
	"Given that the receiver manages a page of memory, answer a block of that memory to use."
	^ ExternalData
		fromHandle: handle + (byteIndex - 1)
		byteSize: numBytes
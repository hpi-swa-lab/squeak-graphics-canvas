*Vulkan-FFI-Support
fromHandle: aHandle byteSize: byteSize
	^ (self fromHandle: aHandle type: ExternalType unsignedByte asPointerType)
		size: byteSize;
		yourself
*Vulkan-FFI-Support
pointerAt: byteOffset length: numBytes

	| addr |
	addr := ExternalAddress basicNew: numBytes.
	1 to: numBytes do: [:i |
		addr basicAt: i put: (self unsignedByteAt: (byteOffset + i) - 1)].
	^ addr
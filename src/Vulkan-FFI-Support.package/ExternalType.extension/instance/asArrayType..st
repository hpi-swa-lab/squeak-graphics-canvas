*Vulkan-FFI-Support
asArrayType: aNumber

	self isPointerType ifFalse: [^ self asPointerType asArrayType: aNumber].
	
	^ ExternalArrayType basicNew
		type: self;
		numberOfItems: aNumber;
		yourself
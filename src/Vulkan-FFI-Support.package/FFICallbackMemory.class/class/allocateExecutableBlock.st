executable pages
allocateExecutableBlock

	| blockSize |
	blockSize := FFICallback maxThunkSize.
	AccessProtect critical:
		[ExecutablePages do:
			[:page |
			1 to: page size - blockSize by: blockSize do:
				[:i|
				(page at: i) = 0 ifTrue:
					[page at: i put: 1.
					 ^ page blockAt: i byteSize: blockSize]]]].
	AccessProtect critical: [
		| newPage |
		newPage := ExecutablePages add: self allocateExecutablePage.
		^ (newPage blockAt: 1 byteSize: blockSize)
			at: 1 put: 1;
			yourself]
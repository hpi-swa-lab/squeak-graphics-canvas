initialization
setArgTypes: externalTypes evaluableObject: blockOrMessage

	
	abi := FFIPlatformDescription current abi.
	handle := nil.
	type := nil.
	
	evaluableObject := blockOrMessage.
	argTypes := externalTypes.





	"Support for callee pop callbacks (Pascal calling convention such as the Win32 stdcall: convention) are supported using the <calleepops: N> pragma which specifies how many bytes to pop. See http://forum.world.st/Pharo-FFI-on-aarch64-arm64-td5096777.html#a5096786."
	thunk := FFICallbackMemory allocateExecutableBlock.
	self init__ccall.
	"self init__stdcall: 0."
	"(method pragmaAt: #calleepops:)
		ifNil: [self init__ccall]
		ifNotNil: [:pragma | self init__stdcall: (pragma argumentAt: 1)]."
		
	"numEvaluatorArgs := (evaluator := method selector) numArgs.
	self addToThunkTable"
	ThunkToCallbackMap at: thunk getHandle put: self
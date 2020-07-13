callbacks
invokeCallbackContext: vmCallbackContextAddress "<Integer>" "^<FFICallbackReturnValue>"
	"The low-level entry-point for callbacks sent from the VM/IA32ABI plugin.
	 Evaluate the callback corresponding to the thunk referenced by vmCallbackContextAddress,
	 a pointer to a FFICallbackContext, set up by the VM's thunkEntry
	 routine.  Return to C via primSignal:andReturnAs:fromContext:.  thisContext's sender is the
	 call-out context."
	| callbackContext typeCode helper |
	callbackContext := FFICallbackContext fromHandle: vmCallbackContextAddress.
	helper := self fromInteger: vmCallbackContextAddress.
	
	[typeCode := FFICallback evaluateCallbackForContext: callbackContext]
		ifCurtailed: [self error: 'attempt to non-local return across a callback'].
	typeCode ifNil:
		[typeCode := callbackContext errorResult].
	"Now attempt to return to C.  The primitive will answer false if this is not the most recent Callback,
	 in which case we should wait on the lifoCallbackSemaphore which will be signalled when the most
	 recent callback successfully returns.  If this is the most recent callback the primitive will signal all
	 the processes waiting on the lifoCallbackSemaphore, one of which will be the next most recent.
	 Hence all nested callbacks will end up returning in the right order."
	[helper primSignal: LifoCallbackSemaphore andReturnAs: typeCode fromContext: thisContext] whileFalse:
		[LifoCallbackSemaphore wait]
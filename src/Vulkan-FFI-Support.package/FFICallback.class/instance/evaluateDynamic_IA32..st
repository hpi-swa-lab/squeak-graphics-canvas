callback - evaluators
evaluateDynamic_IA32: callbackContext
	"Set handle to access arguments as most appropriate for the ABI. For x86 (i.e. IA32) it is the stack pointer."
	<abi: 'IA32'> <evaluator>
	
	self setArgData: callbackContext stackPtr.
	^ self evaluateDynamic: callbackContext
callback - evaluators
evaluateDynamic_ARM32: callbackContext
	"Set handle to access arguments as most appropriate for the ABI. For ''RISCs'' it is the pointer to the integer register."
	<abi: 'ARM32'> <evaluator>
	
	self setArgData: callbackContext intRegArgs.
	^ self evaluateDynamic: callbackContext
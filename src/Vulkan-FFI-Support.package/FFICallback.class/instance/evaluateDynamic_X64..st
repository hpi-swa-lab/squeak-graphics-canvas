callback - evaluators
evaluateDynamic_X64: callbackContext
	"Set handle to access arguments as most appropriate for the ABI. For ''RISCs'' it is the pointer to the integer register."
	<abi: 'X64'> <evaluator>
	
	self setArgData: callbackContext intRegArgs.
	^ self evaluateDynamic: callbackContext
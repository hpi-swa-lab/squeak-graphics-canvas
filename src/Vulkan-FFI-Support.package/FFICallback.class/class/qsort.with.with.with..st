examples
qsort: values with: number with: width with: block
	"Indirection to define the signature for the provided block."
	"<callback: int (*)(double* double*)>"
	
	| callback |
	callback := FFICallback
		signature: ((thisContext method pragmaAt: #callback:) argumentAt: 1)
		block: block.
			
	^ self cdeclQsort: values with: number with: width with: callback thunk